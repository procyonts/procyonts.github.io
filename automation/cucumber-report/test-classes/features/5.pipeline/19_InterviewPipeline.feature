@interview_pipeline @job
Feature: Interview Pipeline Management

  Scenario: Initialize candidate interview pipeline successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to the first job in Jobs list
    And User expands the candidate row with Submitted status
    And User clicks on Initialize Pipeline button
    Then User should see success toast message "Pipeline Initialized"

  Scenario: Mark candidate as passed successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to the first job in Jobs list
    And User expands an initialized candidate row
    And User clicks on Mark as Passed button and waits

  Scenario: Revert candidate stage successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to the first job in Jobs list
    And User expands an initialized candidate row
    And User clicks on Revert Stage button
    Then User should see success toast message "Stage Reverted"

  Scenario: Skip candidate stage successfully with feedback
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to the first job in Jobs list
    And User expands an initialized candidate row
    And User clicks on Skip Stage button
    And User clicks Add Feedback Now, enters feedback "Candidate is ready to skip this stage", and saves

  @interview @smoke
  Scenario: Interview creation
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    When user navigates to job detail view
    When user navigates submission page
    And User creates a interview
