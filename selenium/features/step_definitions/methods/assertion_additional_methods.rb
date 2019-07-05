def wait_for_url_to_contain_partial_text(partial_text, duration)
  wait = Selenium::WebDriver::Wait.new(:timeout => duration.to_i) # seconds
  wait.until { $driver.current_url.include? partial_text }
end
