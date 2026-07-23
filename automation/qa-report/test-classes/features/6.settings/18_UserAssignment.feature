@user_assignment @settings
Feature: User Assignment Management

  Scenario: Invite User successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to User Assignment in Settings
    And User clicks on Invite User button
    And User enters user invitation details
    And User sends the invitation

  Scenario: Edit User Profile successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to User Assignment in Settings
    And User clicks actions for the first user
    And User clicks on Edit Profile option
    And User enters updated profile details
    And User saves the profile changes

  Scenario: Delete User Account successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to User Assignment in Settings
#    And User clicks on Invite User button
#    And User enters user invitation details
#    And User sends the invitation
#    And User searches for the invited user
    And User clicks actions for the first user
    And User clicks on Delete Account option
    And User confirms delete user action
