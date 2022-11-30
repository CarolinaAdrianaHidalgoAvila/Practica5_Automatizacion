Steps ya definidos

----> basicSteps
'I see an option for the {string}'
'I see a text of {string}'
I press the "([^"]*)" button

----> loginSteps
I am on the Start Americas Together login page
I enter "([^"]*)" for Email
I enter "([^"]*)" for Contraseña

----> eventSteps
When(/^I press the "([^"]*)" button especific$/) do |buttonName|
