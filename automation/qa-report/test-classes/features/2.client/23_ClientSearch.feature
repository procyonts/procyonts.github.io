@clientSearch
Feature: Client Search and Filter Functionality

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard

  Scenario: Search clients with valid keyword
    When User navigates to clients tab
    And User searches for a client by valid keyword
    Then Client search results should be visible

  Scenario: Search clients with invalid keyword
    When User navigates to clients tab
    And User searches for a client by invalid keyword
    Then No client results should be displayed

  Scenario: Clear client search to restore list
    When User navigates to clients tab
    And User searches for a client by valid keyword
    And User clears the client search
    Then Client search results should be visible

  Scenario: Filter clients by Status
    When User navigates to clients tab
    And User filters clients by status
    Then Filtered client results should match the status filter
