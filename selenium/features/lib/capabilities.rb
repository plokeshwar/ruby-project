require 'yaml'
require "selenium-webdriver"

module Capabilities
  def self.get(browserMode)
  	if(browserMode == "chrome")

			binding.pry

			options = Selenium::WebDriver::Chrome::Options.new
			options.add_argument('--ignore-certificate-errors')
			options.add_argument('--disable-popup-blocking')
			options.add_argument('--disable-translate')
			Selenium::WebDriver.for :chrome, options: options

  #  	capabilities = YAML.load_file('config/capabilities.yml')
	#		Selenium::WebDriver.for :chrome

			#Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => { "w3c" => false })
	else
		raise "No other driver instantiated.  Need to add code."
    end
  end
end
