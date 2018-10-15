*** Settings ***

Documentation  This is an example of how you can test Amazon using Robot Framework
Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

*** Variables ***

*** Test Cases ***

###################
# Navigation.robot
###################

# Homepage renders on Chrome
#   [Documentation]  Access homepage on browser. Should support multiple browsers.
#   [Tags]  Smoke
#   Begin Test  chrome
#   Go To  https://amazon.com/
#   End Test

# Homepage renders on Firefox
#   [Documentation]  Should support multiple browsers
#   [Tags]  Smoke
#   Begin Test  firefox
#   Go To  https://amazon.com/
#   End Test

#################
# Shopping.robot
#################

Search for item
  [Documentation]  Should display a list of results based on the search criteria
  [Tags]  Functional
  Begin Test  chrome
  Go To  https://amazon.com/
  Search For Product
  # Assert
  Page Should Contain Element  css:.s-result-item
  End Test

Add item to cart
  [Documentation]  Should display a success message and increment the cart total items
  [Tags]  Functional
  Begin Test  chrome
  Go To  https://amazon.com/
  Search For Product
  Select Product From Results
  Add Product To Cart
  # Assert
  Page Should Contain  Added to Cart
  Page Should Contain Element  id:nav-cart-count
  Element Should Contain  id:nav-cart-count  1
  End Test

*** Keywords ***

Begin Test
  [Arguments]  ${browser}
  Open Browser  about:blank  ${browser}

End Test
  Close Browser

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
