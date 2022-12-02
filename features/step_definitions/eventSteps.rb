# And I press the "Crear Evento" button especific
When(/^I press the "([^"]*)" button especific$/) do |buttonName|
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button'
    find_button("crear_evento").click
    # find(:xpath, xpath).click
  end


# And The "Crear evento" form shows 
When(/^The "([^"]*)" form shows$/) do |optionform|
  find(:xpath, '//*[@id="ModalFormCrearEvento"]/div/div/strong', :text => optionform)
end

# And  I fill all the fields of the form
When(/^I fill all the fields of the form$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
    case key
    when "Nombre Evento:"
      fill_in 'nombre_evento', :with => value
      @nameEvento = value
    when "Descripcion:"
    fill_in 'descripcion_evento', :with => value
      when "Lider:"
    select(value, :from => 'lider')
    when "Modalidad:"
    select(value, :from => 'modalidad_evento')
    when "Lugar:"
    fill_in 'lugar_evento', :with => value
      when "Hora inicio:"
    fill_in 'hora_inicio', :with => value
      when "Categoria:"
    select(value, :from => 'categoria')
      when "Proyecto:"
    select(value, :from =>  'proyecto')
      when "Hora inicio:"
    fill_in 'hora_inicio', :with => value
      when "Hora fin:"
    fill_in 'hora_fin', :with => value
    when "Fecha:"
    fill_in 'fecha_evento', :with => value	
    end
  end
end

# When I click the "participar" button of event "Ayuda benefica" 
When(/^I click the "([^"]*)" button of event "([^"]*)"$/) do |buttonName, eventName|
  action=buttonName +"_"+ eventName
  click_button(action)
  sleep(1)
end

# Then The "DejarParticipar" button of event "Ayuda benefica" is show
Then(/^The "([^"]*)" button of event "([^"]*)" is show$/) do |buttonName, eventName|
  nameButton = (buttonName +"_"+ eventName)
  existButton = find_button(nameButton).visible? 
  expect(existButton).to be true
end

# The "participar" button of event "Ayuda benefica" is not show
Then(/^The "([^"]*)" button of event "([^"]*)" is show$/) do |buttonName, eventName|
  nameButton = (buttonName +"_"+ eventName)
  existButton = find_button(nameButton).visible? 
  expect(existButton).to be false
end

# Then The event of "Kermes en ayuda a Maria" does not exist
Then(/^The event of "([^"]*)" does not exist$/) do |eventName|
  sleep 4
  existEvent = page.has_content?(eventName)
  expect(existEvent).to be false
end