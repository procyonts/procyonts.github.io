@candidateSubmission
Feature: Candidate Submission Flow
  This feature automates the process of submitting a candidate to a specific job from the Jobs table.

Background:
  Given User is on login page
  When User enters username and password from config file
  And User clicks on login button

  @SubmitFlow
  Scenario: Submit a candidate to a job from the three-dot menu
    When user navigates to submit candidate from job three dots
    And user selects a candidate and clicks next
    And user fills the candidate submission form
    Then user completes the final submission

  @EditMetadata
  Scenario: Edit Submission Metadata
    When user navigates to job detail view
    When user navigates to submissionPage
    And user edits the submission metadata expected ctc
