var fs = require('fs');
var axios = require('axios');
var glob = require('glob');

var urlRegex = /(?:(?:https?|ftp|file):\/\/|www\.|ftp\.)(?:\([-A-Z0-9+&@#\/%=~_|$?!:,.]*\)|[-A-Z0-9+&@#\/%=~_|$?!:,.])*(?:\([-A-Z0-9+&@#\/%=~_|$?!:,.]*\)|[A-Z0-9+&@#\/%=~_|$])/igm; //Change as needed
var maxRetries = 1; //Change as needed
var allowsStatusCodes = [200,301]; //Change as needed

//Validate parameters
if (process.argv.length < 3) {
    console.error('Program should be called at least 3 parameters. Example: \'node script.js filePath/**/file.md\'');
    process.exit();
}

//Beginning of program
var fileGlobs = process.argv.splice(2,process.argv.length - 1);
var filePaths = [];
var promises = fileGlobs.map(function(fileGlob) {
    return getAllFilesFromPath(fileGlob)
        .then(function(files) {
            filePaths = filePaths.concat(files);
        });
});

axios.all(promises)
    .then(function() {
        var allValid = true;

        promises = filePaths.map(function(path) {
            return processFile(path)
                .then(function(isValid) {
                    if(!isValid) {
                        allValid = false;
                    }
                });
        });

        axios.all(promises)
            .then(function() {
                process.exit(allValid ? 0 : -1);
            });
    });

function getAllFilesFromPath(fileGlob) {
    return new Promise(function(resolve) {
       glob(fileGlob, null, function(error, files) {
           if(files === null) {
               files = [];
           }

           resolve(files);
       });
    });
}

function processFile(filePath) {
    var fileContent = fs.readFileSync(filePath, 'utf8');
    var urls = extractUrlsFromString(fileContent);
    var urlWrappers = urls.map(function(url) {
        return {
            url: url,
            valid: false,
            status: null
        }
    });
    var urlPromises = urlWrappers.map(testUrl);

    return axios.all(urlPromises)
        .then(function () {
            var invalidUrlWrappers = urlWrappers.filter(function(wrapper) {
                return !wrapper.valid;
            });

            if(invalidUrlWrappers.length === 0) {
                console.log(filePath + ' ✔︎');
                return true;
            }
            else {
                console.log(filePath + ' ✘');

                invalidUrlWrappers.forEach(function(wrapper) {
                    wrapper.status = wrapper.status || '410';
                    console.log('   ✘ (' + wrapper.status + ')   ' + wrapper.url);
                });

                return false;
            }
        });
}

function extractUrlsFromString(data) {
    var urls = [];

    do {
        var url = urlRegex.exec(data);
        if (url) {
            urls.push(url[0]);
        }
    } while (url);

    return urls;
}

function testUrl(urlWrapper, currentTry) {
    if (!currentTry) currentTry = 1;

    return axios.get(urlWrapper.url)
        .then(function (response) {
            urlWrapper.status = response.status;

            //Add more conditions as necessary
            if (allowsStatusCodes.indexOf(response.status) !== -1) {
                urlWrapper.valid = true;
                return response;
            }
            else {
                throw response;
            }
        })
        .catch(function (error) {
            if (currentTry < maxRetries) {
                return testUrl(urlWrapper.url, currentTry + 1);
            }
            else if(error && error.response && error.response.status) {
                urlWrapper.status = error.response.status;
            }
        });
}
