@client
Feature: Client Creation

  @CreateClient
  Scenario: Valid user logs in and creates a new client
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    And User navigates to client creation page and adds new client
