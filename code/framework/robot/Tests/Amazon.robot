*** Settings ***

Documentation  This is an example of how you can test Amazon using Robot Framework
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

###################
# Navigation.robot
###################

Homepage renders on Chrome
  [Documentation]  Access homepage on browser. Should support multiple browsers.
  [Tags]  Smoke
  Open Browser  https://amazon.com/  chrome
  Close Browser

Homepage renders on Firefox
  [Documentation]  Should support multiple browsers
  [Tags]  Smoke
  Open Browser  https://amazon.com/  ff
  Close Browser

#################
# Shopping.robot
#################

Search for item
  [Documentation]  Should display a list of results based on the search criteria
  [Tags]  Functional
  Open Browser  https://amazon.com/  chrome
  Wait Until Page Contains Element  id:twotabsearchtextbox
  Input Text  id:twotabsearchtextbox  kindle
  Press Key  id:twotabsearchtextbox  \\13
  Wait Until Page Contains  results for
  Page Should Contain Element  css:.s-result-item
  Close Browser

# Add item to cart
#   [Documentation]  Should display a success message and increment the cart total items
#   [Tags]  Functional
#   Open Browser  https://amazon.com/  chrome
#   Wait Until Page Contains Element  id:twotabsearchtextbox
#   Input Text  id:twotabsearchtextbox  kindle
#   Press Key  id:twotabsearchtextbox  \\13
#   Wait Until Page Contains  results for
#   Click Element  id:result_0
#   Wait Until Page Contains  price
#   Page Should Contain  stock
#   Click Element  id:submit.add-to-cart
#   Wait Until Page Contains Element  id:hl-confirm
#   Page Should Contain  item was added
#   Page Should Contain Element  id:nav-cart-count
#   Element Attribute Value Should Be  id:nav-cart-count  text  1
#   Close Browser

*** Keywords ***
