# steps for "see" , "click button"

#Then I see an option for the "Inicio"
Then('I see an option for the {string}') do |option|
    sleep 4
    hasButton = find_button(option).visible?
    expect(hasButton).to be true
    # page.has_content?(option)
  end
  
#Then I see a text of "Tus Próximos Eventos"
Then('I see a text of {string}') do |text|
    sleep 4
    hasContent = page.has_content?(text)
    expect(hasContent).to be true
end

# And I click the "Iniciar Sesión" button
When(/^I click the "([^"]*)" button$/) do |buttonName|
    find_button(buttonName).click
    # find(:xpath, xpath).click
end

# And I click the Detalle button of "Ayuda benefica"
When(/^I click the Detalle button of Ayuda benefica$/) do |buttonName|
  xpath = "/html/body/div[1]/div[2]/div[1]/div/div[1]/div[2]/div[3]/div/div[2]/div/button[2]"
  find(:xpath, xpath).click

  # button = find(:css , 'button[name="Detalles_Ayuda benefica"]')
  # button.click
  # find(:css, "button.btn.btn-secondary[name='Detalles_Ayuda benefica']").click
  # find_field('button.btn.btn-secondary', :name => 'Detalles_Ayuda benefica')
  # find('button.btn.btn-secondary', :name => 'Detalles_Ayuda benefica')
end
