@resumeParsing
Feature: Resume Parsing

  @ParseResume
  Scenario: Create candidate by uploading and parsing a resume
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User navigates to candidates and uploads a resume
    Then Resume should be parsed successfully

  @DeleteCandidateAfterSingleParse
  Scenario: Delete a candidate from the candidates list
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    When User selects a candidate and clicks delete
    And User confirms the deletion
    Then Candidates should be deleted successfully

  @BulkParseResume
  Scenario: Bulk upload and parse candidate resume
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User navigates to settings and uploads a resume in bulk
    Then Bulk resumes should be processed successfully

  @DeleteCandidateAfterBulkParse
  Scenario: Delete a candidate from the candidates list again
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    When User selects a candidate and clicks delete
    And User confirms the deletion
    Then Candidates should be deleted successfully
