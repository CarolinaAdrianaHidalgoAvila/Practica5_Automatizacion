When(/^I enter the required fields as show below$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
      when "Nombre:"
          fill_in 'username', :with => value
          @name = value
      when "Apellido:"
          fill_in 'lastname', :with => value
    when "Email:"
          fill_in 'email', :with => value
      @correo = value
    when "Phone:"
          fill_in 'phone', :with => value
      when "Password:"
          fill_in 'password', :with => value
      when "Confirm Password:"
          fill_in 'confirmPassword', :with => value
          @password = value
      end
    end
end

When(/^I enter blank password data to start session$/) do
	fill_in 'pass', :with => ""
end 

Then (/The "CREAR TU CUENTA DE START" button is not enabled$/)
        find(:button, disabled: true, type: 'CREAR TU CUENTA DE START')
end

When(/^I click the "([^"]*)" link$/) do |linkName|
    find(linkName).click
    # find(:xpath, xpath).click
end
