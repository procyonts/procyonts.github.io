@contact
Feature: Contact Creation

  @CreateContact
  Scenario: Create a new contact under an existing client
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to client section and adds a new contact
    Then New contact should be created successfully
