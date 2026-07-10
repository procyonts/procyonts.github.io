@job @jobNegative
Feature: Job Creation - Negative Scenarios

  @EmptyFieldValidation
  Scenario: Skip the mandatory fields and verify error
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to job creation page
    And User clicks Next on Step 2 of job form
    Then User should see mandatory field validation toast

  @JobInvalidExperienceRange
  Scenario: Enter min experience greater than max experience and verify error
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to job creation page
    And User fills Step 1 correctly and clicks Next
    And User enters min experience greater than max experience
    And User clicks Next on Step 2 of job form
    Then An experience range validation error should be displayed

  @JobInvalidSalaryRange
  Scenario: Enter min salary greater than max salary and verify error
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to job creation page
    And User fills Step 1 correctly and clicks Next
    And User enters min salary greater than max salary
    And User clicks Next on Step 2 of job form
    Then A salary range validation error should be displayed
