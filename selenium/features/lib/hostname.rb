module Hostname
  def self.get
    #This is to make sure we keep seperate hosts
    dev_url = 'http://www.way2automation.com/angularjs-protractor/banking/#/login'
    qa_url = 'http://www.way2automation.com/angularjs-protractor/banking/#/login'

    if ENV['PROFILE'] == 'dev'
      dev_url
    else
      qa_url
    end
  end
end
