
When(/^Click the "([^"]*)" button$/) do |buttonName|
    xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[2]'
    find(:xpath,xpath).click
  end


Then(/^I should see "([^"]*)"$/) do |errorMessage|
    page.has_content?(errorMessage)
    sleep 2
  end

  When(/^I enter the required fields$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
    when "Fecha de Nacimiento:"
        fill_in 'fecha_de_nacimiento', :with => value
    when "Ocupacion:"
        select(value, :from => 'ocupacion')
    when "Carrera:"
        fill_in 'carrera', :with => value
    when "Ciudad de Residencia:"
        fill_in 'ciudad_de_recidencia', :with => value
    when "Pais de Residencia:"
        fill_in 'pais_de_recidencia', :with => value
    when "Genero:"
        select(value, :from => 'genero')
    when "Nombre de Contacto de Emergencia:"
        fill_in 'nombre_contacto_de_emergencia', :with => value
    when "Relacion de Contacto de Emergencia:"
        fill_in 'relacion_contacto_de_emergencia', :with => value
    when "Numero de Contacto de Emergencia:"
        fill_in 'numero_contacto_de_emergencia', :with => value
    when "Descripcion Personal:"
        fill_in 'descripcion_personal', :with => value
    end
end
end


Then('I will see an alert with the text {string}') do |string|
  sleep 3
  find('div > div > div.MuiAlert-message')
end
