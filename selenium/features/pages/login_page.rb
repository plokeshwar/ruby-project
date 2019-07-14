require_relative '../../features/pages/home_page'
require_relative '../pages/common_methods'

class LoginPage

  def enter_user_id(user)
    user_id.send_keys user
    next_after_user_id.click
    sleep 2
  end

  def enter_password(pwd)
    password.send_keys pwd
    next_after_password.click
    sleep 2
    switch_handle_primary
    HomePage.new
  end

  def click_login
    login_button.click
    sleep 5
    switch_handle_secondary
  end

  def bankmanager_login_button
    el = $driver.find_element :xpath => "(//button[@class='btn btn-primary btn-lg'])[2]"
    el.click
    ManagerPage.new
  end

  def customer_login_button
    $driver.find_element :xpath => "(//button[@class='btn btn-primary btn-lg'])[1]"
  end
    

  def user_id
    $driver.find_element :css => 'input'
  end

  def next_after_user_id
    $driver.find_element :id => 'identifierNext'
  end

  def password
    $driver.find_element :css => 'input[type="password"]'
  end

  def next_after_password
    $driver.find_element :id => 'passwordNext'
  end

  def switch_handle_secondary
    @all_handles = $driver.window_handles
    $driver.switch_to.window(@all_handles[1])
  end

  def switch_handle_primary
    @all_handles = $driver.window_handles
    $driver.switch_to.window(@all_handles[0])
  end

end
