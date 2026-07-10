@candidate
Feature: Candidate Creation

  @CreateCandidate
  Scenario: add a new candidate
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User adds a new candidate
    Then New candidate should be created successfully
