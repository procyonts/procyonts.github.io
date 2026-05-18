@candidate
Feature: Candidate Creation

  @CreateCandidate
  Scenario: Create adds a new candidate
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User adds a new candidate
    Then New candidate should be created successfully
