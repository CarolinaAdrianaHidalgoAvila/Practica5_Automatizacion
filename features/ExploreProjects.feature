Feature: Show projects section

  In order See a project 
  As an user interested in seeing details of a project
  I should  log in to the application and be in the projects section

   Scenario: User views detail of a project
    Given I am on the StartApp login page
    When I enter "voluntario@gmail.com" for Email
    And I enter "123456" for Contraseña
    And I press the "Iniciar Sesión" button
    And I press the "Proyectos" button
    And I Enter the category "Medio Ambiente"
    And I select a project
    And I press button "Ver detalle"
    Then I see project detail
   Scenario: User views events of a project
    Given I am on the StartApp login page
    When I enter "voluntario@gmail.com" for Email
    And I enter "123456" for Contraseña
    And I press the "Iniciar Sesión" button
    And I press the "Proyectos" button
    And I Enter the category "Medio Ambiente"
    And I see project detail
    Then I see events of a project
    
   Scenario: User views projects by category
    Given I am on the StartApp login page
    When I enter "voluntario@gmail.com" for Email
    And I enter "123456" for Contraseña
    And I press the "Iniciar Sesión" button
    And I press the "Proyectos" button
    Then I see project category list
