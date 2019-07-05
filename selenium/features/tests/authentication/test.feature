@something
Feature: Login feature

  @one
  Scenario: I login with valid credentials
    Given I open the page
    When I login successfully
    Then I verify the user logged in


