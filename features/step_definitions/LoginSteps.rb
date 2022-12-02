
#Given I am on the sample homepage
Given(/^I am on the sample homepage$/) do
  visit 'https://testing-start.web.app/login'
end
  
#When I enter "voluntario@gmail.com" for Email
When(/^I fill in Email with "([^"]*)"$/) do |email|
  fill_in 'email', :with => email
end

#And I enter "123456" for Contraseña
When(/^I fill in Password with "([^"]*)"$/) do |password|
  fill_in 'password', :with => password
end
When(/^I click the "([^"]*)" button$/) do |buttonName|
  find_button(buttonName).click
end
Then (/^I should be on the users home page$/) do
  visit 'https://testing-start.web.app'
end

#When I enter blank details for Register
When(/^I enter blank password data to start session$/) do
	fill_in 'pass', :with => ""
end 

Then(/^the error "([^"]*)" is show$/) do |errorMessage|
  page.has_content?(errorMessage)
  sleep 2
end

Then(/^how message "([^"]*)"$/) do |errorMessage|
  page.has_content?(errorMessage)
  sleep 2
end

