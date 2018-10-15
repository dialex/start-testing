install:
	easy_install pip
	brew install python2
	pip install robotframework
	pip install robotframework-seleniumlibrary
	pip install robotframework-requests
	brew cask install chromedriver
	brew cask install geckodriver

clean:
	rm -r Results
	mkdir Results

test: clean
	robot -d Results Tests/Amazon.robot
