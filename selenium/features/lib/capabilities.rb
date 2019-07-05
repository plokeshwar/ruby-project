require 'yaml'

module Capabilities
  def self.get(browserMode)
  	if(browserMode == "chrome")
    	capabilities = YAML.load_file('config/capabilities.yml')
		Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => { "w3c" => false })
	else
		raise "No other driver instantiated.  Need to add code."
    end
  end
end
