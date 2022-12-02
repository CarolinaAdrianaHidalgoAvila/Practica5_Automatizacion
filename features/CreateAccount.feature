Feature:  Create a new account
  In order sign in with a new account
  As a user interested in creating a new account to enter the application
  I should fill out the form to create a new user

  Scenario: User fills out a form with consistent data
    Given I am on the StartApp login page
    When I press on register here
    And full fields
    And I click on the button create your account in Start
    Then Go back to login page
  Scenario: User does not fill out required fields of the form
    Given I am on the StartApp login page
    When I do not fill the fields
    And I click on the button create your account in Start
    Then I get error message
  Scenario: User creates new account with Google
    Given I am on the StartApp login page
    When I press on register here
    And I press the button register with google
    Then Go back to login page

Scenario: Register a user on site        
	Given I am on the Mercury Tours homepage
	And I click the "Register" link
	When I enter the required fields as show below
	|First Name: 	    | Pepito             |
    |Last Name: 	    | Perez              |
    |Phone: 	        | 1234-567-12        |
    |Email: 	        | pepe@pepazo.com    |
    |Address:           | Av. America #123   |	
    |City: 	            | Cochabamba         |
    |State/Province:    | Cochabamba         | 	
    |Postal Code: 	    | 9897               |
    |Country: 	        | BOLIVIA            |
    |User Name: 	    | Pepazo             |
    |Password:          | ILoveQA            | 
    |Confirm Password:  | ILoveQA            |
	And send my registration form
	Then the confirmation screen is show
	And my user name is "Pepazo"