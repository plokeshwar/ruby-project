require_relative '../methods/click_elements_additional_methods'

Given(/^I drag element having (.+) "([^\"]*)" to the (right|left|top|bottom) by "([^\"]*)" pixels$/) do |access_type, access_name, direction, distance_in_pixels|
  validate_locator access_type
  drag_and_drop_element(access_type, access_name, direction, distance_in_pixels)
end