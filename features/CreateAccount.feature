Feature:  Create a new account
  In order sign in with a new account
  As a user interested in creating a new account to enter the application
  I should fill out the form to create a new user

  Scenario: Register a new user on site        
    Given I am on the StartApp login page
      And I click the "¿No tienes cuenta? Regístrate aquí." link
      When I enter the required fields as show below
        |Nombre: 	             | Pepito               |
        |Apellido: 	           | Perez                |
        |Correo: 	             | caroh2001@gmail.com  |
        |Telefono: 	           | 42719465             |
        |Contraseña:           | pepito123            |	
        |Confirmar Contraseña: | pepito123            |
      And I click the "CREAR TU CUENTA DE START" button
      Then a confirmation message is displayed
      And I am on the StartApp login page
      And I fill in Email with "caroh2001@gmail.com"
      And I fill in Password with "pepito123"
      And I click the "Iniciar Sesión" button
      And I should be on the users home page

  Scenario: Register a new user on site        
    Given I am on the StartApp login page
      And I click the "¿No tienes cuenta? Regístrate aquí." link
      When I enter blank Nombre data to start session
      And I enter blank Apellido data to start session
      And I enter blank Correo data to start session
      And I enter blank Telefono data to start session
      And I enter blank Contraseña data to start session
      And I enter blank Confirmar Contraseña data to start session
      Then The "CREAR TU CUENTA DE START" button is not enabled


  Scenario: User creates new account with Google        
    Given I am on the StartApp login page
    And I click the "¿No tienes cuenta? Regístrate aquí." link
    When I click the ""
    And I press the button register with google
    Then Go back to login page