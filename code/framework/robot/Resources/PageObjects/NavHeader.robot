*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Keywords ***

Search
  [Arguments]  ${term}
  Wait Until Page Contains Element  id:twotabsearchtextbox
  Input Text  id:twotabsearchtextbox  ${term}
  Press Key  id:twotabsearchtextbox  \\13
  Wait Until Page Contains  results for
