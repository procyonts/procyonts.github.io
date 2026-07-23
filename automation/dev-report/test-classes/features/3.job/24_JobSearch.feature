@jobSearch
Feature: Job Search and Filter Functionality

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard

  Scenario: Search jobs with valid keyword
    When User navigates to jobs tab
    And User searches for a job by valid keyword
    Then Job search results should be visible

  Scenario: Search jobs with invalid keyword
    When User navigates to jobs tab
    And User searches for a job by invalid keyword
    Then No job results should be displayed

  Scenario: Clear job search to restore list
    When User navigates to jobs tab
    And User searches for a job by valid keyword
    And User clears the job search
    Then Job search results should be visible

  Scenario: Filter jobs by Status
    When User navigates to jobs tab
    And User filters jobs by status
    Then Filtered job results should match the status filter

  Scenario: Filter jobs by Priority
    When User navigates to jobs tab
    And User filters jobs by priority
    Then Filtered job results should match the priority filter
