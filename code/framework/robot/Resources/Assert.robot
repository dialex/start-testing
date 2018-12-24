*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Keywords ***

Page Has Text
  [Arguments]  ${text}
  Page Should Contain  ${text}

Page Has Element
  [Arguments]  ${locator}
  Page Should Contain Element  ${locator}

Element Has Text
  [Arguments]  ${locator}  ${text}
  Element Should Contain  ${locator}  ${text}
