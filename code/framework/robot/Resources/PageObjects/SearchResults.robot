*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot
Resource  ProductDetail.robot

*** Keywords ***

Wait Until Page Loads
  Wait Until Page Contains  results for

Select Product
  [Arguments]  ${index}
  Click Element  xpath://*[@id="result_${index}"]//a/h2
  ProductDetail.Wait Until Page Loads
