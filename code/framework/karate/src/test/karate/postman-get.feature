Feature: Postman Echo GET

  Background:
    * url 'https://postman-echo.com'
    * def endpoint = "get"

  Scenario: Endpoint /get exists

    Given path endpoint
    When method get
    Then status 200

  Scenario: Returns the parameters received

    Given path endpoint
    And param param1 = "Hajime"
    And param arg2 = "Dozo"
    When method get
    Then status 200
    And match response == "#notnull"
    And match response.args.param1 == "Hajime"
    # Assertion using JsonPath (see https://stackoverflow.com/questions/62280561/)
    # Option 1: compare JsonPath result with an array (which is misleading)
    And match $..arg2 == ["Dozo"]
    # Option 2: store JsonPath result in tmp var (which is cumbersome)
    * def tmpKarateSupportForJsonPathIsPooPoo = $..arg2
    And match tmpKarateSupportForJsonPathIsPooPoo[0] == "Dozo"
