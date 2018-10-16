*** Settings ***

Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot
Resource  ProductAddedToCart.robot

*** Keywords ***

Wait Until Page Loads
  Page Should Contain  Stock

Add To Cart
  Click Button  id:add-to-cart-button
  ProductAddedToCart.Wait Until Page Loads
