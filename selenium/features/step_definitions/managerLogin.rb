require 'selenium-cucumber'
require_relative '../lib/hostname'
require_relative '../../features/pages/login_page'
require_relative '../../features/pages/Manager_page'

Given 'I click on manager button' do
  login_page=LoginPage.new
  @manager_page=login_page.bankmanager_login_button
end

When 'I click on customer button' do
@customer_page= @manager_page.click_on_add_customer
end

When 'I add customer with valid details' do
  @customer_page.add_customer_first_name
  @customer_page.add_customer_last_name
  @customer_page.add_customer_postcode
end

Then 'I verify the customer is added' do

end
