Feature: As a coreteam user
         I want to see the profile in Start Americas Together 
         so I test that works correctly

  Scenario: See Profile
    Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    And Press the "Iniciar Sesión" button
    When Press the "Cuenta" button
    Then I should see "core team"


  Scenario: See Events from Acount    
    Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    When  I click the "Cuenta" button
    And  I click the "Tus Eventos" button
    Then I should see "MuiPaper-root MuiCard-root jss23 MuiPaper-outlined MuiPaper-rounded"
  
  Scenario: See Editar perfil
    Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    When I click the "Cuenta" button
    And Click the "Editar Perfil" button
    Them I should see "Guardar Cambios"
     
