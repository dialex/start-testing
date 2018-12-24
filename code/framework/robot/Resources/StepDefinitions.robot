*** Settings ***

Resource  AmazonActions.robot

*** Keywords ***

# Given

I search for a product
  AmazonActions.Search For Product
  AmazonActions.Select Product From Results

# When

I add a product to an empty cart
  AmazonActions.Add Product To Cart

# Then

my cart has that item
  Assert.Page Has Text  Added to Cart
  Assert.Page Has Element  id:nav-cart-count
  Assert.Element Has Text  id:nav-cart-count  1
