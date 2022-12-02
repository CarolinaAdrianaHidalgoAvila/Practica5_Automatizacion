Feature: Log in
  In order the login
  As a user interested in social assistance
  I should enter password and username correctly
 
  Scenario: The user enters his correct email and password to log in
    Given I am on the StartApp login page
    When you enter an email and a password
    |correo: 	    | voluntario@gmail.com            |
    |contraseña: 	    | 123456              |
    Then the home screen comes out

   Scenario: User enters their wrong email and password to log in
    Given I am on the StartApp login page
    When you enter the wrong password
    Then the home screen comes out

   