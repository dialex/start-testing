*** Settings ***

Documentation  Info about the test suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

User must sign in
  [Documentation]  Info about this test
  [Tags]  Smoke
  Open Browser  http://amazon.com/  chrome
  Close Browser

*** Keywords ***
