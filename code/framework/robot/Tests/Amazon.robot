*** Settings ***

Documentation  Access homepage on browser
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

Homepage renders on Chrome
  [Documentation]  Should support multiple browsers
  [Tags]  Smoke
  Open Browser  https://amazon.com/  chrome
  Close Browser

Homepage renders on Firefox
  [Documentation]  Should support multiple browsers
  [Tags]  Smoke
  Open Browser  https://amazon.com/  ff
  Close Browser

*** Keywords ***
