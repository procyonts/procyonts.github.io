@settings @settingsNegative
Feature: Settings Management - Negative Scenarios

  # ───────────────────────────────────────────────────────────────────────────
  # PERMISSION GROUPS NEGATIVE SCENARIOS
  # ───────────────────────────────────────────────────────────────────────────

  @PermissionGroupEmptyName
  Scenario: Submit empty permission group form and verify required field error
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Permission Groups in Settings
    And User clicks on New Group button
    And User clicks Create Group without filling name
    Then Required field error for Group Name should be displayed

  @PermissionGroupDuplicateName
  Scenario: Submit duplicate permission group name and verify error toast
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Permission Groups in Settings
    And User clicks on New Group button
    And User enters duplicate permission group details from properties
    And User selects two checkboxes from properties
    And User clicks Create Group expecting failure
    Then A duplicate permission group error toast should be displayed

  # ───────────────────────────────────────────────────────────────────────────
  # ROLES NEGATIVE SCENARIOS
  # ───────────────────────────────────────────────────────────────────────────

  @RoleEmptyName
  Scenario: Submit empty role form and verify required field error
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Roles in Settings
    And User clicks Create Role button expecting failure
    Then Required field error for Role Name should be displayed

  @RoleDuplicateName
  Scenario: Submit duplicate role name and verify error toast
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Roles in Settings
    And User clicks on Create Role button
    And User enters duplicate role details from properties
    And User selects permission group from properties
    And User clicks Create Role button expecting failure
    Then A duplicate role error toast should be displayed

  @RoleWithoutPermissionGroup
  Scenario: Submit role form without selecting permission group and verify error
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Roles in Settings
    And User clicks on Create Role button
    And User enters role details from properties
    And User clicks Create Role button expecting failure
    Then A role validation error toast should be displayed
