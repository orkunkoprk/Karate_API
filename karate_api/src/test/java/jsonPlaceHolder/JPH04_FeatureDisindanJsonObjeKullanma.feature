Feature: JPH04 Kullanici Json objesi olan test datalarini Feature disinda olusturabilmeli

  Background:

    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def pathParams = '/posts/70'
    * def requestBody = read("td_requestBody.json")
    * def expectedResponse = read("td_expectedResponse.json")


  Scenario: TC04 disardan Json Obje kullanilabilmeli


    Given url baseUrl
    And path pathParams
    And request requestBody
    When method PUT
    And status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match response == expectedResponse