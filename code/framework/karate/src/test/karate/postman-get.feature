Feature: Postman Echo GET

  Background:
    * url 'https://postman-echo.com'
    * def endpoint = "get"

  Scenario: Endpoint /get exists

    Given path endpoint
    When method get
    Then status 200

  Scenario: Receives parameters and echoes them back

    Given path endpoint
    And param param1 = "Hajime"
    And param arg2 = "Dozo"
    When method get
    Then status 200
    And match response == "#notnull"
    And match response.args.param1 == "Hajime"
    And match response.args.arg2 == "Dozo"
# waiting on https://stackoverflow.com/questions/62280561/
# And match $..arg2 == "Dozo"
