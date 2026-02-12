Feature: JPH05 Kullanici disardan kullandigi JSON objelerinde degisiklik yapabilmeli


  Background:

    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def pathParams = '/posts/70'
    * def requestBody = read("td_requestBody.json")
    * def expectedResponse = read("td_expectedResponse.json")

  Scenario: TC05


    Given url baseUrl
    And path pathParams
    Then set requestBody.title = 'Karate'
    And set requestBody.body = 'Framework'
    And request requestBody
    When method PUT
    And status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    Then set expectedResponse.title = 'Karate'
    And set expectedResponse.body = 'Framework'
    And match response == expectedResponse