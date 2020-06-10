Feature: Amazon UI automation

  Background:
    * def baseUrl = 'https://www.amazon.com/'
    * configure driver = { type: 'chrome' } # this is optional

  Scenario: Access homepage on browser
    Given driver baseUrl
    Then driver.url == baseUrl
    And assert locate("#twotabsearchtextbox").exists
    And assert locate("{}Cart").exists
