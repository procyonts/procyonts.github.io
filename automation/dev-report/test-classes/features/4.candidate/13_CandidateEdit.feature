@candidateEdit
Feature: Candidate Edit

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard

  @EditCandidate
  Scenario: Navigate to candidate and edit two fields
    When user navigates to first candidate
    And user clicks edit button on candidate
    And user edits two fields of candidate
    And user scrolls and saves candidate changes
