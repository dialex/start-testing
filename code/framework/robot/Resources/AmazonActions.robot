*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Keywords ***

Search For Product
  Wait Until Page Contains Element  id:twotabsearchtextbox
  Input Text  id:twotabsearchtextbox  explore it
  Press Key  id:twotabsearchtextbox  \\13
  Wait Until Page Contains  results for

Select Product From Results
  Click Element  xpath://*[@id="result_0"]//a
  Wait Until Page Contains  price

Add Product To Cart
  Page Should Contain  Stock
  Click Button  id:add-to-cart-button
  Wait Until Page Contains Element  id:huc-v2-confirm-text-container
