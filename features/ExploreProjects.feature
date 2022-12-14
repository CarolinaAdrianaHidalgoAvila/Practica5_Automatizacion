Feature: Show projects section

  In order See a project 
  As an user interested in seeing details of a project
  I should  log in to the application and be in the projects section

   Scenario: User views detail of a project
    Given I am on the StartApp login page
    When I fill in Email with "voluntario@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    And I click the "Proyectos" button
    And I Enter the category "Medio Ambiente"
    And I select a project
    And I click button "Ver detalle"
    Then I see project detail

   Scenario: User views events of a project
    Given I am on the StartApp login page
    When I fill in Email with "voluntario@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    And I click the "Proyectos" button
    And I Enter the category "Medio Ambiente"
    And I see project detail
    Then I see events of a project
    
   Scenario: User views projects by category
    Given I am on the StartApp login page
    When I fill in Email with "voluntario@gmail.com"
    And I fill in Password with "123456"
    And I click the "Iniciar Sesión" button
    And I click the "Proyectos" button
    Then I see project category list
