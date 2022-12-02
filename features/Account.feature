Feature: As a coreteam user
         I want to see the profile in Start Americas Together 
         so I test that works correctly

  Scenario: See Profile
    Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    When I click the "Cuenta" button
    Then I should see "core team"


  Scenario: See Events from Acount    
    Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    When  I click the "Cuenta" button
    And  I click the "Tus Eventos" button
    Then I should see "MuiPaper-root MuiCard-root jss23 MuiPaper-outlined MuiPaper-rounded"
  
  Scenario: Editar perfil
     Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    When I click the "Cuenta" button
    And Click the "Editar Perfil" button
    And I enter the required fields
        |Fecha de Nacimiento    | 2842001   |
    |Ocupacion:     | Universidad     |
    |Carrera:       | Estudiante      |
    |Ciudad de Residencia:              | Cochabamba      |
    |Pais de Recidencia:                | Bolivia          |
    |Genero:                            | Otro             |
    |Nombre de Contacto de Emergencia   | Sebitas          |
    |Relacion de Contacto de Emergencia | Hermano          |
    |Numero de Contacto de Emergencia   | 63908138         |
    |Descripcion Personal               | Hi I am new user |
    And I save the changes
    Then I will see an alert with the text "Se Actualizo Correctamente"

  Scenario: See Editar perfil
    Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    When I click the "Cuenta" button
    And Click the "Editar Perfil" button
    Them I should see "Guardar Cambios"
     
