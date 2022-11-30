# steps for "see" , "click button"

#Then I see an option for the "Inicio"
Then('I see an option for the {string}') do |option|
    sleep 4
    page.has_content?(option)
  end
  
#Then I see a text of "Tus Próximos Eventos"
Then('I see a text of {string}') do |text|
    sleep 4
    page.has_content?(text)
end

# And I press the "Iniciar Sesión" button
When(/^I press the "([^"]*)" button$/) do |buttonName|
    find_button(buttonName).click
    # find(:xpath, xpath).click
  end
