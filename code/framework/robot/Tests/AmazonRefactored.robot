*** Settings ***

Documentation   This is an example of how you can test Amazon using Robot Framework
Resource        ../Resources/Assert.robot
Resource        ../Resources/AmazonActions.robot
Resource        ../Resources/CommonActions.robot
Resource        ../Resources/StepDefinitions.robot
Force Tags      Example
Test Setup      CommonActions.Begin Test  chrome  https://amazon.com/
Test Teardown   CommonActions.End Test

*** Variables ***

*** Test Cases ***

###################
# Navigation.robot
###################

Homepage renders on Chrome
  [Documentation]  Should support multiple browsers.
  [Tags]  Smoke
  Assert.Page Has Text  Today's Deals

#################
# Shopping.robot
#################

Search for item
  [Documentation]  Should display a list of results based on the search criteria
  [Tags]  Functional
  AmazonActions.Search For Product
  Assert.Page Has Element  css:.s-result-item

Add item to cart
  [Documentation]  Should display a success message and increment the cart total items
  [Tags]  Functional
  AmazonActions.Search For Product
  AmazonActions.Select Product From Results
  AmazonActions.Add Product To Cart
  Assert.Page Has Text  Added to Cart
  Assert.Page Has Element  id:nav-cart-count
  Assert.Element Has Text  id:nav-cart-count  1

Add item to cart (Gherkin style)
  [Documentation]  Should display a success message and increment the cart total items
  [Tags]  Acceptance
  Given I search for a product
  When I add a product to an empty cart
  Then my cart has that item

*** Keywords ***
