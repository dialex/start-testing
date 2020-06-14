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
    # This one-liner should work, but doesn't ¯\_(ツ)_/¯
    # When input("#twotabsearchtextbox", [searchTerm, Key.ENTER])
    When input("#twotabsearchtextbox", searchTerm)
    # This should work, but doesn't
    # And click("#nav-search-submit-text")
    And mouse("#nav-search-submit-text").click()
    # This should not be necessary, but it is (╯°□°）╯︵ ┻━┻
    And waitFor('#nav-search-submit-text').click()
    Then match driver.url contains "s?k=" + searchTermEncoded
    And locate("div.s-result-list").exists
    And locate("{span}Explore It!: Reduce Risk and Increase Confidence with Exploratory Testing").exists
  # Read more about this issue at https://github.com/intuit/karate/issues/1169

  Scenario: Add item to cart
    Given driver baseUrl
    And def searchTerm = "Explore It"
    And input("#twotabsearchtextbox", searchTerm)
    And click("#nav-search-submit-text")
    When click(".s-result-item .s-image")
    And click("#add-to-cart-button")
    Then assert locate("{}Cart").exists
    And match text("#nav-cart-count") == 1
