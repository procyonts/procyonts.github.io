@job @bulkUpload
Feature: Job Bulk Upload

  @JobBulkUpload
  Scenario: Upload a CSV file with 2 jobs and verify they are created
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Settings and opens Job Bulk Upload page
    And User uploads a job CSV file
    And User clicks the Upload button for bulk jobs
    Then Upload should complete with 2 jobs created

  @JobDelete
  Scenario: Navigate to jobs and delete multiple jobs
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Jobs page
    And User selects the first two jobs from the list
    And User clicks the Delete Job button
    And User confirms the deletion of selected jobs
    Then A toast message confirming job deletion should be displayed
