*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Keywords ***

Wait Until Page Loads
  Wait Until Page Contains Element  id:twotabsearchtextbox

Search
  [Arguments]  ${term}
  Input Text  id:twotabsearchtextbox  ${term}
  Press Key  id:twotabsearchtextbox  \\13
  SearchResults.Wait Until Page Loads
