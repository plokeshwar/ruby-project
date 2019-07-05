def keyboard_enter_button(access_type, access_name)
  $driver.find_element(:"#{access_type}" => access_name).send_keys "\n"
end
