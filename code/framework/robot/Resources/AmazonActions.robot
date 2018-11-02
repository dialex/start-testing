*** Settings ***

Resource  PageObjects/NavHeader.robot
Resource  PageObjects/ProductDetail.robot
Resource  PageObjects/SearchResults.robot

*** Variables ***

${BookName}  explore it

*** Keywords ***

Search For Product
  NavHeader.Search  ${BookName}
  # Set Test Variable  ${LastSerchTerm}  ${BookName}

Select Product From Results
  SearchResults.Select Product  0

Add Product To Cart
  ProductDetail.Add To Cart
