Feature: Postman Echo POST

  Background:
    * url 'https://postman-echo.com'
    * def endpoint = "post"

  Scenario: Endpoint /post exists

    Given path endpoint
    And request {}
    When method post
    Then status 200

  Scenario: Returns the payload received

    Given path endpoint
    And request read('../fixtures/postman-post-payload.json')
    When method post
    Then status 200
    And match response.data.some-field == "some value"
    And match response.data.list-of-stuff[1].name == "stuff2"

  # this is actually the "get started" example from the docs...
  #   you know, the kind of code you want to always work,
  #   because it's your first interaction with the tool (ಠ _ ಠ)
  Scenario: Failed request returns 500

    Given url "http://myhost.com/v1/cats"
    And request { name: "Billie"}
    When method post
    Then status 500
# Then status 201
# And match response == { id: "#notnull", name: "Billie" }
