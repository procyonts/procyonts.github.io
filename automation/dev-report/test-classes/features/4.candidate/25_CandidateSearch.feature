@candidateSearch
Feature: Candidate Search and Filter Functionality

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard

  Scenario: Search candidates with valid keyword
    When User navigates to candidates tab
    And User searches for a candidate by valid keyword
    Then Candidate search results should be visible

  Scenario: Search candidates with invalid keyword
    When User navigates to candidates tab
    And User searches for a candidate by invalid keyword
    Then No candidate results should be displayed

  Scenario: Filter candidates by Status
    When User navigates to candidates tab
    And User filters candidates by status
    Then Filtered candidate results should match the status filter

  Scenario: Filter candidates by Experience
    When User navigates to candidates tab
    And User filters candidates by experience
    Then Filtered candidate results should match the experience filter
