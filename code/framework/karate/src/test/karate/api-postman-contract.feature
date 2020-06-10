Feature: Postman Echo GET

  Background:
    * url 'https://postman-echo.com'

  # Inspired by https://github.com/intuit/karate/blob/master/karate-junit4/src/test/java/com/intuit/karate/junit4/demos/schema-like.feature
  Scenario: Contract of /get response

    Given path "/get"
    And param word1 = "Domo arigato"
    And param word2 = "Sayonara"
    And def schema =
      """
      { args: { word1: #string, word2: #string } }
      """
    When method get
    Then match response contains schema
