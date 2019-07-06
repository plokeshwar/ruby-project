require_relative '../lib/driver'
require_relative '../lib/utils'

Before do
  # resize browser size
  $driver = Driver.get
  $driver.manage.window.resize_to(1365, 1000)
  #$driver.manage.window.maximize
  puts $driver.manage.window.size
end

After do |scenario|
  begin
    if scenario.failed?
      Utils.screenshot unless Driver.browserstack?
      Utils.freeze unless Driver.browserstack?
    end
  ensure
    close_driver
  end
end