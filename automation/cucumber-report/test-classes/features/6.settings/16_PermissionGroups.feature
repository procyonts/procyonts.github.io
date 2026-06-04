@rbac @settings
Feature: Role Based Access Control

  Scenario: Create Permission Groups successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Permission Groups in Settings
    And User clicks on New Group button
    And User enters permission group details from properties
    And User selects two checkboxes from properties
    And User scrolls down and saves the permission group

  Scenario: Edit Permission Groups successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Permission Groups in Settings
    And User clicks edit for the created permission group
    And User changes the permission group name from properties
    And User saves the edited permission group

  Scenario: Delete Permission Groups successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Permission Groups in Settings
    And User deletes the created permission group

