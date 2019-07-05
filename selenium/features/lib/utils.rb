require 'date'

module Utils
	def self.generate_random_email
		epoch_date_time_milliseconds = DateTime.now.strftime('%Q').to_s
		"testing+#{epoch_date_time_milliseconds}@gmail.com"
	end

	def self.screenshot
		ss_folder = 'features/screenshots'
		Dir.mkdir(ss_folder) unless File.directory?(ss_folder)
		take_screenshot
	end

	def self.freeze
		sleep 10
	end

	def self.to_partial_link_text(product_name)
		return product_name.gsub(/[^0-9A-Za-z]/, '-' => '-', ' ' => '-', '.' => '').squeeze("-").downcase
	end
end