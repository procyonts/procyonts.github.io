@jobDetail
Feature: Job In Detail View Actions
  This feature covers all note and document operations performed in the Job Detail View page.

Background:
  Given User is on login page
  When User enters username and password from config file
  And User clicks on login button

  @JobDetail
  Scenario: Navigate to job detail view
    When user navigates to job detail view

  @SubmitCandidate
  Scenario: Submit a candidate
    When user navigates to job detail view
    When user submit candidate

  @TaskCreation
  Scenario: Create a task in Task Manager
    When user navigates to job detail view
    When user navigates to engagement tab
    And user create a task

  @Notes
  Scenario: CRUD operations for notes
    When user navigates to job detail view
    When user navigates to engagement tab
    And user adds a note
#    And user edits the note
#    And user pins the note
#    And user deletes the note

  @Document
  Scenario: CRUD operations for documents
    When user navigates to job detail view
    When user navigates to engagement tab
    And user uploads a document
#    And user deletes the document

