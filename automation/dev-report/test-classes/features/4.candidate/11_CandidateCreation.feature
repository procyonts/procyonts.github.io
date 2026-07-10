@candidate
Feature: Candidate Creation

  @CreateCandidate
  Scenario: Create a new candidate using the quick modal
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User creates a new candidate via quick modal
    Then New candidate should be created successfully
