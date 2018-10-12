*** Settings ***

Documentation  Info about the test suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

Homepage renders on Chrome
  [Documentation]  Should support multiple browsers
  [Tags]  Smoke
  Open Browser  http://amazon.com/  chrome
  Close Browser

Homepage renders on Firefox
  [Documentation]  Should support multiple browsers
  [Tags]  Smoke
  Open Browser  http://amazon.com/  ff
  Close Browser

*** Keywords ***
