*** Settings ***

Documentation  This is an example of how you can test Amazon using Robot Framework
Library  SeleniumLibrary  run_on_failure=Capture Page Screenshot

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
  Input Text  id:twotabsearchtextbox  explore it
  Press Key  id:twotabsearchtextbox  \\13
  Wait Until Page Contains  results for
  Page Should Contain Element  css:.s-result-item
  Close Browser

Add item to cart
  [Documentation]  Should display a success message and increment the cart total items
  [Tags]  Functional
  Open Browser  https://amazon.com/  chrome
  Wait Until Page Contains Element  id:twotabsearchtextbox
  Input Text  id:twotabsearchtextbox  explore it
  Press Key  id:twotabsearchtextbox  \\13
  Wait Until Page Contains  results for
  Click Element  xpath://*[@id="result_0"]//a/h2
  Wait Until Page Contains  price
  Page Should Contain  Stock
  Click Button  id:add-to-cart-button
  Wait Until Page Contains Element  id:huc-v2-confirm-text-container
  Page Should Contain  Added to Cart
  Page Should Contain Element  id:nav-cart-count
  Element Should Contain  id:nav-cart-count  1
  # Element Text Should Be  id:nav-cart-count  1
  Close Browser

*** Keywords ***
