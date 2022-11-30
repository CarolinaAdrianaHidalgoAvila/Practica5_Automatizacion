Feature: Log in
  In order the login
  As a user interested in social assistance
  I should enter password and username correctly
@happy
  Scenario: The user enters his correct email and password to log in
    Given I am on the Start Americas Together login page
    When I enter "voluntario@gmail.com" for Email
    And I enter "123456" for Contraseña
    And I click the "Iniciar Sesión" button
    Then the home screen comes out

   Scenario: User enters their wrong email and password to log in
    Given I am on the StartApp login page
    When you enter the wrong password
    Then the home screen comes out

   