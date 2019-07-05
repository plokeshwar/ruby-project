require_relative 'local_driver'
require 'pry'

module Driver
  def self.get
      LocalDriver.get("chrome")
  end

end
