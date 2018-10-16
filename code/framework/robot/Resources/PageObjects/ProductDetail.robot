*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Keywords ***

Add To Cart
  Page Should Contain  Stock
  Click Button  id:add-to-cart-button
  Wait Until Page Contains Element  id:huc-v2-confirm-text-container
