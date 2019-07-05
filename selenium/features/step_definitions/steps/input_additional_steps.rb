require_relative '../methods/input_additional_methods'

# click keyboard enter button into input field steps
Then(/^I click keyboard enter button into input field having (.+) "([^\"]*)"$/) do |type, access_name|
  validate_locator type
  keyboard_enter_button(type, access_name)
end

Then(/^I press "(.*?)" key from keyboard$/) do |key|
  $driver.action.send_keys(:"#{key}").perform
end
