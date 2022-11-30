#Given I am on the Start Americas Together login page
Given(/^I am on the Start Americas Together login page$/) do
  page.driver.browser.manage.window.maximize
  visit ('/login')
end
  
#When I enter "voluntario@gmail.com" for Email
When(/^I enter "([^"]*)" for Email$/) do |email|
  fill_in 'email', :with => email
end

#And I enter "123456" for Contraseña
When(/^I enter "([^"]*)" for Contraseña$/) do |pass|
  fill_in 'password', :with => pass
end