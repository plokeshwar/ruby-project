class AddCustomer
require 'common_methods'

def add_customer_first_name
  $driver.find_element :xpath => "//input[@ng-model='fName']".send_keys(get_random_name)
end

def add_customer_last_name
  $driver.find_element :xpath => "//input[@ng-model='lName']".send_keys(get_random_name)
end

def add_customer_postcode
  $driver.find_element :xpath => "//input[@ng-model='postCd']".send_keys(generate_random_number)
end
