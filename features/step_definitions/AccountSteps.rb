
When(/^Click the "([^"]*)" button$/) do |buttonName|
    xpath = '/html/body/div/div[2]/div[1]/div/div/div/div[2]'
    find(:xpath,xpath).click
  end


Then(/^I should see "([^"]*)"$/) do |errorMessage|
    page.has_content?(errorMessage)
    sleep 2
  end