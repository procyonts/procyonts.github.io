@roles @settings
Feature: Roles Management

  Scenario: Create Role successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Roles in Settings
    And User clicks on Create Role button
    And User enters role details from properties
    And User selects permission group from properties
    And User saves the role

  Scenario: Delete Role successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Roles in Settings
    And user deletes a role
