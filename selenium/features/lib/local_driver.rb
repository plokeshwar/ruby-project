require_relative 'capabilities'

module LocalDriver
  def self.get(browserMode)
    Selenium::WebDriver.for(
      :chrome,
      desired_capabilities: Capabilities.get(browserMode)
    )
  end
end