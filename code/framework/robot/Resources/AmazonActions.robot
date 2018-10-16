*** Settings ***

Resource  PageObjects/NavHeader.robot
Resource  PageObjects/ProductDetail.robot
Resource  PageObjects/SearchResults.robot

*** Keywords ***

Search For Product
  NavHeader.Search  explore it

Select Product From Results
  SearchResults.Select Product  0

Add Product To Cart
  ProductDetail.Add To Cart
