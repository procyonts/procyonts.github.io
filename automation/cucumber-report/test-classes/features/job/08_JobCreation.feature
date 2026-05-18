@job
Feature: Job Creation

  @CreateJob
  Scenario: Create a new Job
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to job section and adds a new job
    Then New job should be created successfully
