var fs = require('fs');
var axios = require('axios');

var urlRegex = /(?:(?:https?|ftp|file):\/\/|www\.|ftp\.)(?:\([-A-Z0-9+&@#\/%=~_|$?!:,.]*\)|[-A-Z0-9+&@#\/%=~_|$?!:,.])*(?:\([-A-Z0-9+&@#\/%=~_|$?!:,.]*\)|[A-Z0-9+&@#\/%=~_|$])/igm; //Change as needed
var maxRetries = 1; //Change as needed

//Validate parameters
if (process.argv.length < 3) {
    console.error('Program should be called with 1 parameter. Example: \'node script.js filePath/file.md\'');
    process.exit()
}

//Beginning of program
var filePath = process.argv[2];
var fileContent = fs.readFileSync(filePath, 'utf8');
console.log(filePath);
var urls = extractUrlsFromString(fileContent);

axios.all(urls.map(testUrl))
    .then(function () {
        process.exit();
    });

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

function testUrl(url, currentTry) {
    if (!currentTry) currentTry = 1;

    return axios.get(url)
        .then(function (response) {

            //Add more conditions as necessary
            if (response.status === 200) {
                console.log('  ✅  ' + url);
                return response;
            }
            else {
                throw response;
            }
        })
        .catch(function (error) {
            if (currentTry < maxRetries) {
                return testUrl(url, currentTry + 1);
            }
            else {
                console.log('  ❌  ' + url);
                process.exit(1);
            }
        });
}
