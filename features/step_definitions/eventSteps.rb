# And I press the "Crear Evento" button especific
When(/^I press the "([^"]*)" button especific$/) do |buttonName|
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
    find_button("crear_evento").click
    # find(:xpath, xpath).click
  end