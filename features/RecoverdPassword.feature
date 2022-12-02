Feature:RecoveredPassword
   As a  user
   I want to recover the password in Start Americas Together page
   so I test that works correctly

  Scenario: The user will log out
    Given I am on the Start Americas Together login page
    When I click the "¿Has olvidado tu contraseña? Recupera tu contraseña." button
    Then I am on the Start Americas Together Reset Password page
    And I should see "Ingrese el correo para restablecer su contraseña."