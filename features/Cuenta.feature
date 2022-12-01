Feature: As a coreteam user
         I want to see the profile in Start Americas Together 
         so I test that works correctly

  Scenario See Profile
    Given I am on the Start Americas Together login page
    When I enter "coreteam@gmail.com" for email
    And I enter "123456" for pass
    And Press the "Iniciar Sesión" button
    When Press the "Cuenta" button
    Then I should see "core team"


  Scenario: See Events from Acount    
    Given I am on the Start Americas Together login page
    When I enter "coreteam@gmail.com" for Email
    And I enter "123456" for Contraseña
    And I click the "Iniciar Sesión" button
    When  I click thee "Cuenta" button
    And  I click the "Tus Eventos" button
    Then I should see "ZEdited By Automated Test"
  
  Scenario: See Editar perfil
    Given I am on the Start Americas Together login page
    When I enter "coreteam@gmail.com" for email
    And I enter "123456" for pass
    And Press the "Iniciar Sesión" button
    When Press the "Cuenta" button
    And Click the "Editar Perfil" button
