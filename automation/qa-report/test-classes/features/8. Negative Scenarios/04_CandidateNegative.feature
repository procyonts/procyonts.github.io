@candidate_negative
Feature: Candidate Validation

@candidate_negative
Scenario: Verify mandatory field validation in candidate creation

  Given User is on login page
  When User enters username and password from config file
  And User clicks on login button
  And User clicks submit without entering mandatory fields
  Then Mandatory field validation toast should be displayed

  Scenario: Verify invalid email validation
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    When User enters an invalid email address
    Then Email validation message should be displayed

  @candidate_engagement_negative @task_empty
  Scenario: Verify required fields validation when creating task in Candidate Engagement
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When user navigates to candidateInDetailView
    And user navigates to engagement
    And user clicks Add Task button on candidate detail page
    And user clicks Create Task without filling required fields
    Then user should see candidate engagement toast message "Required fields missing"

  @candidate_engagement_negative @document_large
  Scenario: Verify document upload size limit validation in Candidate Engagement
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When user navigates to candidateInDetailView
    And user navigates to engagement
    And user uploads a large document for candidate
    Then user should see candidate engagement toast message "Uploaded File size should be less than 3 MB"