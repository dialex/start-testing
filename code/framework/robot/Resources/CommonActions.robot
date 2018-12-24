*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Keywords ***

Begin Test
  [Arguments]  ${browser}  ${url}
  Open Browser  about:blank  ${browser}
  Go To  ${url}

End Test
  Close Browser
