require 'selenium-cucumber'
require_relative '../lib/hostname'
require_relative '../../features/pages/login_page'

Given 'I open QC console page' do
  $driver.get(Hostname.get)
end

When 'I login successfully' do
  login_page = LoginPage.new
  login_page.click_login
  login_page.enter_user_id 'testing'
  @home_page = login_page.enter_password 'redmarttesting'
end

Then 'I verify the user logged in' do
  expect(@home_page.verify_logged_user('Test Account')).to eq(true), "User Logged in does not match."
end


When 'I click the QC link' do
  @qc_page = @home_page.click_qc
end

Then 'I verify QC page is loaded' do
  @qc_page.verify_qc_page_load
end

When 'I scan the Zone ID' do
  barcode = 'testDeviceId:testZoneId:QC:FRESH'
  @qc_page.scan_barcode(barcode)
  sleep 5
end

When 'I scan the Scanner Id' do
  barcode = 'SG1001'
  @qc_page.scan_barcode(barcode)
  binding.pry
  sleep 5
end