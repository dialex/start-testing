*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Keywords ***

Select Product
  [Arguments]  ${index}
  Click Element  xpath://*[@id="result_${index}"]//a
  Wait Until Page Contains  price
