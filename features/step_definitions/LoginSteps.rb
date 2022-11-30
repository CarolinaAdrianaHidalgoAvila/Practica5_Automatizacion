let BaseUrl="https://testing-start.web.app/login"
Given(/^I am on the StartApp login page$/) do
  page.driver.browser.manage.window.maximize
  visit ('https://testing-start.web.app/login')
end
When(/^I search for "([^"]*)"$/) do |valueToSearch|
  fill_in('q',:with => valueToSearch).native.send_keys(:return)
end