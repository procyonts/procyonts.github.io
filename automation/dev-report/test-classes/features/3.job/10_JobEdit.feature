@jobEdit
Feature: Job Edit

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard

  @EditJob
  Scenario: Navigate to job and edit two fields
    When user navigates to first job
    And user clicks edit button on job
    And user edits two fields of job
    And user scrolls and saves job changes
