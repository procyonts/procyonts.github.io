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

  @AddNote
  Scenario: Add a new note
    When user navigates to job detail view
    And user adds a note

  @EditNote
  Scenario: Edit the existing note
    When user navigates to job detail view
    And user edits the note

  @PinNote
  Scenario: Pin the note
    When user navigates to job detail view
    And user pins the note

  @DeleteNote
  Scenario: Delete the note
    When user navigates to job detail view
    And user deletes the note

  @UploadDocument
  Scenario: Upload a new document
    When user navigates to job detail view
    And user uploads a document

  @DeleteDocument
  Scenario: Delete the uploaded document
    When user navigates to job detail view
    And user deletes the document

  @SubmitCandidate
  Scenario: Submit a candidate
    When user navigates to job detail view
    When user submit candidate

  @taskCreation
  Scenario: Create a Task
    When user navigates to job detail view
    When user create a task