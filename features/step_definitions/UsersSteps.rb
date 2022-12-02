Then(/^I should see "([^"]*)" message$/) do |errorMessage|
    page.has_content?(errorMessage)
    sleep 2
  end