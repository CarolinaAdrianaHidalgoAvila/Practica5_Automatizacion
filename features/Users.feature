Feature:Users
   As a coreteam user
   I want to see the Users in Start Americas Together 
   so I test that works correctly

  Scenario: See Users
    Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    When I click the "Usarios" button
    And I click the "Descargar" button
    Then I should see "Descarga completada" message