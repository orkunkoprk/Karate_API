Feature: JPH03 Kullanici Test datalarini Feature icinde Testten once tanimlayabilmeli

   Background: Test datalarini tanimlama

     * def baseUrl = 'https://jsonplaceholder.typicode.com'
     * def pathParams = '/posts/70'
     * def requestBody =
     """{
  "title": "Ahmet",
  "body": "Merhaba",
  "userId": 10,
  "id": 70

  }
     """
     * def expectedResponse =
      """{
  "title": "Ahmet",
  "body": "Merhaba",
  "userId": 10,
  "id": 70

  }
     """


  Scenario: TC03 Background Kullanilabilmeli

    Given url baseUrl
    And path pathParams
    And request requestBody
    When method PUT
    And status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match response == expectedResponse


