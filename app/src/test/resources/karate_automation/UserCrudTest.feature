Feature: CRUD de Usuario - AutomationExercise API

  Background:
    * url baseUrl
    * def userEmail = 'ellie@test.com'
    * def userPassword = 'password_ellie10'

  Scenario: Creación de un nuevo usuario
    * def createData = { name: 'Ellie Tamayo', email: '#(userEmail)', password: '#(userPassword)', title: 'Miss', birth_date: '24', birth_month: '10', birth_year: '1999', firstname: 'Elizabeth', lastname: 'Tamayo', company: 'Sofka', address1: 'Quito', address2: 'Quito', country: 'Ecuador', zipcode: '180625', state: 'Pichincha', city: 'Quito', mobile_number: '0987654321' }
    Given path '/createAccount'
    And form fields createData
    When method POST
    Then status 200
    And match response.responseCode == 201
    And match response.message == 'User created!'

  Scenario: Consulta del usuario creado
    Given path '/getUserDetailByEmail'
    And param email = userEmail
    When method GET
    Then status 200
    And match response.responseCode == 200
    And match response.user.name == 'Ellie Tamayo'
    And match response.user.email == userEmail

  Scenario: Actualización de datos del usuario
    * def updateData = { email: '#(userEmail)', password: '#(userPassword)', name: 'Diana Tamayo', firstname: 'Diana', address1: 'Guayaquil' }
    Given path '/updateAccount'
    And form fields updateData
    When method PUT
    Then status 200
    And match response.responseCode == 200
    And match response.message == 'User updated!'

    Given path '/getUserDetailByEmail'
    And param email = userEmail
    When method GET
    Then status 200
    And match response.responseCode == 200
    And match response.user.name == 'Diana Tamayo'
    And match response.user.address1 == 'Guayaquil'

  Scenario: Eliminación de la cuenta de usuario
    Given path '/deleteAccount'
    And form fields { email: '#(userEmail)', password: '#(userPassword)' }
    When method DELETE
    Then status 200
    And match response.responseCode == 200
    And match response.message == 'Account deleted!'

    Given path '/getUserDetailByEmail'
    And param email = userEmail
    When method GET
    And match response.responseCode == 404
