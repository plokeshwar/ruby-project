require_relative '../methods/assertion_additional_methods'

# wait for specific element to not display for specific period of time
Then(/^I wait (\d+) seconds for url to have partial text as "(.*?)"$/) do |duration, partial_text|
  wait_for_url_to_contain_partial_text(partial_text, duration)
end
