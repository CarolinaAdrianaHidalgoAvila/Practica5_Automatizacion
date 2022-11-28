#Given I am on the Start Americas Together login page
Given(/^I am on the Start Americas Together login page$/) do
    page.driver.browser.manage.window.maximize
    visit ('/login')
  end
  
  
  #When I enter "carlos@test.com" for Email
  When(/^I enter "([^"]*)" for Email$/) do |email|
    fill_in 'email', :with => email
  end
  
  #And I enter "123" for Contraseña
  When(/^I enter "([^"]*)" for Contraseña$/) do |pass|
    fill_in 'password', :with => pass
  end
  
  # And I press the "Iniciar Sesión" button
  When(/^I press the "([^"]*)" button$/) do |buttonName|
    find_button(buttonName).click
    # find(:xpath, xpath).click
  end
  
  # And I press the "Crear Evento" button especific
  When(/^I press the "([^"]*)" button especific$/) do |buttonName|
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
    find_button("crear_evento").click
    # find(:xpath, xpath).click
  end
  
  #Then I see a option for the "Inicio"
  Then('I see a option for the {string}') do |text|
    sleep 4
    page.has_content?(text)
  end
  
  #Then I see a text of "Tus Próximos Eventos"
  Then('I see a text of {string}') do |text|
    sleep 4
    page.has_content?(text)
  end