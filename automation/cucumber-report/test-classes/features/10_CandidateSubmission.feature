@candidateSubmission
Feature: Submission page

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button

  @submission
  Scenario: Navigate to submission page
    When user navigates to job detail view
    When user navigates submission page

  @AddNote
  Scenario: Add a new note
    When user navigates to job detail view
    When user navigates submission page
    And user adds a note in submission

  @EditNote
  Scenario: Edit the existing note
    When user navigates to job detail view
    When user navigates submission page
    And user edits the note in submission

  @PinNote
  Scenario: Pin the note
    When user navigates to job detail view
    When user navigates submission page
    And user pins the note in submission

  @DeleteNote
  Scenario: Delete the note
    When user navigates to job detail view
    When user navigates submission page
    And user deletes the note in the submission

  @UploadDocument
  Scenario: Upload a new document
    When user navigates to job detail view
    When user navigates submission page
    And user uploads a document in submission

  @DeleteDocument
  Scenario: Delete the uploaded document
    When user navigates to job detail view
    When user navigates submission page
    And user deletes the document in submission

  @interview
    Scenario: Interview creation
    When user navigates to job detail view
    When user navigates submission page
    And User creates a interview


  @taskCreation
  Scenario: Create a Task
    When user navigates to job detail view
    When user navigates submission page
    When user create a task in submission