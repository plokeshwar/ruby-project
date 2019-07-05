require_relative '../methods/progress_additional_methods'

# wait for specific element to not display for specific period of time
Then(/^I wait (\d+) seconds for element having (.+) "(.*?)" to not display$/) do |duration, type, access_name|
  validate_locator type
  wait_for_element_to_not_display(type, access_name, duration)
end
