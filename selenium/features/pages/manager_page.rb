class ManagerPage
  
def click_on_add_customer
  $driver.find_element :xpath => "//button[@ng-class='btnClass1']".click
  AddCustomer.new
end

def click_on_open_account
  $driver.find_element :xpath => "//button[@ng-class='btnClass2']".click
end

def click_on_customers
  $driver.find_element :xpath => "//button[@ng-class='btnClass3']".click
end

end