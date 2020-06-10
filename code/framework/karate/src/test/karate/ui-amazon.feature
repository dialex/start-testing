Feature: Amazon UI automation

  Background:
    * def baseUrl = 'https://www.amazon.com/'
    * configure driver = { type: 'chrome' } # this is optional

  Scenario: Access homepage on browser
    Given driver baseUrl
    Then driver.url == baseUrl
    And assert locate("#twotabsearchtextbox").exists
    And assert locate("{}Cart").exists

  Scenario: Search for item
    Given driver baseUrl
    And def searchTerm = "Explore It"
    And def searchTermEncoded = "Explore+It"
    # This should work, but doesn't ¯\_(ツ)_/¯
    # When input("#twotabsearchtextbox", [searchTerm, Key.ENTER])
    When input("#twotabsearchtextbox", searchTerm)
    And click("#nav-search-submit-text")
    # Issue reported https://stackoverflow.com/questions/62308044/karate-ui-automation-test-results-are-not-coherent
    Then match driver.url contains "s?k=" + searchTermEncoded
    And locate("div.s-result-list").exists
    And locate("{span}Reduce Risk and Increase Confidence").exists

  Scenario: Add item to cart
    Given driver baseUrl
    And def searchTerm = "Explore It"
    And input("#twotabsearchtextbox", searchTerm)
    And click("#nav-search-submit-text")
    When click(".s-result-item .s-image")
    And click("#add-to-cart-button")
    Then assert locate("{}Cart").exists
    And match text("#nav-cart-count") == 1
