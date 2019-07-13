@something
Feature: Manager Login feature

  @one
  Scenario: I login with Manager credentials
    Given I click on manager button
    When I click on customer button
    when I add customer with valid details
    Then I verify the customer is successfully added 
