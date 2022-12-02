Feature:Log out
  In order log out of the application
  As a user interested in exiting the application and closing the session
  I should press close session

  Scenario: The user will log out
    Given I am on the Start Americas Together login page
    When I fill in Email with "coreteam@gmail.com"
    And I fill in Password with "123456"
    When I click the "LOGOUT" button
    Then I am on the Start Americas Together login page