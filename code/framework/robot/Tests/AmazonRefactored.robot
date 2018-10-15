*** Settings ***

Documentation  This is an example of how you can test Amazon using Robot Framework
Resource  ../Resources/AmazonActions.robot
Resource  ../Resources/CommonActions.robot

*** Variables ***

*** Test Cases ***

###################
# Navigation.robot
###################

Homepage renders on Chrome
  [Documentation]  Should support multiple browsers.
  [Tags]  Smoke
  CommonActions.Begin Test  chrome  https://amazon.com/
  Page Should Contain  Today's Deals
  End Test

Homepage renders on Firefox
  [Documentation]  Should support multiple browsers
  [Tags]  Smoke
  CommonActions.Begin Test  firefox  https://amazon.com/
  Page Should Contain  Today's Deals
  End Test

#################
# Shopping.robot
#################

Search for item
  [Documentation]  Should display a list of results based on the search criteria
  [Tags]  Functional
  CommonActions.Begin Test  chrome  https://amazon.com/
  AmazonActions.Search For Product
  # Assert
  Page Should Contain Element  css:.s-result-item
  End Test

Add item to cart
  [Documentation]  Should display a success message and increment the cart total items
  [Tags]  Functional
  CommonActions.Begin Test  chrome  https://amazon.com/
  AmazonActions.Search For Product
  AmazonActions.Select Product From Results
  AmazonActions.Add Product To Cart
  # Assert
  Page Should Contain  Added to Cart
  Page Should Contain Element  id:nav-cart-count
  Element Should Contain  id:nav-cart-count  1
  End Test

*** Keywords ***
