require_relative '../pages/common_methods'

class AddCustomer
  def add_customer_first_name
    $driver.find_element :xpath => "//input[@ng-model='fName']".send_keys(get_random_name)
  end

  def add_customer_last_name
    $driver.find_element :xpath => "//input[@ng-model='lName']".send_keys(get_random_name)
  end

  def add_customer_postcode
    $driver.find_element :xpath => "//input[@ng-model='postCd']".send_keys(generate_random_number)
  end

  def click_on_submit_for_addcustomer
    $driver.find_element :xpath => "//button[@type='submit']".click
  end

end