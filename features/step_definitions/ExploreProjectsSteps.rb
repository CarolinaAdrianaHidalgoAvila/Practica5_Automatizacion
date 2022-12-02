When(/^I press the proyects icon$/) do
    xpath = '/html/body/div[1]/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath).click
  end