Feature: Log in
  In order the login
  As a user interested in social assistance
  I should enter password and username correctly

  Scenario Outline: Register on the Start Americas Together login page with several valid emails   
    Given I am on the StartApp login page
    When I fill in Email with <email>
    And I fill in Password with <password>
    And I click the "Iniciar Sesión" button
    Then I should be on the users home page
    
  Examples:
      | email                 | password| 
      |  voluntario@gmail.com |  123456 |
      |  lider@gmail.com      |  123456 |	  
      |  coreteam@gmail.com   |  123456 |

  Scenario: Register on Start Americas Together page without password
    Given I am on the StartApp login page
    When I fill in Email with  voluntario@gmail.com 
    And I enter blank password data to start session
    And I click the "Iniciar Sesión" button
    Then the error "Campo requerido" is show.

   Scenario: Register on the Start Americas Together login page with invalid details
    Given I am on the StartApp login page
    When I fill in Email with caramelo@gmail.com
    And I fill in Password with 1345678
    And I click the "Iniciar Sesión" button
    Then show message "Correo o contraseña inválidos."

   