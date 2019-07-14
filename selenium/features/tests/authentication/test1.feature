@something
Feature: Manager Login feature

  @manager
  Scenario: I login with Manager credentials
    Given I click on manager button
    When I click on customer button
    When I add customer with valid details
    Then I verify the customer is successfully added 
