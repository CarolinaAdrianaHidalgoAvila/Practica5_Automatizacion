Feature: As a coreteam user
         I want to see the Users in Start Americas Together 
         so I test that works correctly

  Scenario: See Users
    Given I am on the Start Americas Together login page
    When I enter "coreteam@gmail.com" for Email
    And I enter "123456" for Contraseña
    And I click the "Iniciar Sesión" button
    When I click the "Usarios" button
    And I click the "Descargar" button
    Then I should see ""