
class HomePage

  def verify_logged_user(user)
    sleep 5
    logged_user.text.to_s == user
  end

  def click_qc
    sleep 5
    warehouse_link.click
  end

  private

  def logged_user
    $driver.find_element :xpath => "//div[@class='settings']//div[@class='text-concrete-dark']"
  end

  def warehouse_link
    $driver.find_element :xpath => "//a[@href=\"#/warehouse\"]"
  end

  def qc_link
    $driver.find_element :xpath => "//a[@href=\"#/warehouse/qc/station-scan\"]"
  end

end
