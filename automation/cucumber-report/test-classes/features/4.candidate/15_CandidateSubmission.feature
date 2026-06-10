@candidateSubmissionEngagement
Feature: Submission page

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button

  @submission
  Scenario: Navigate to submission page
    When user navigates to job detail view
    When user navigates to submissionPage


  @taskCreation
  Scenario: Create a Task
    When user navigates to job detail view
    When user navigates submission page
    And user navigates to submission engagement tab
    When user create a task in submission

  @editTask
  Scenario: Edit a Task in submission
    When user navigates to job detail view
    When user navigates submission page
    And user navigates to submission engagement tab
    And user edits the task in submission

  @deleteTask
  Scenario: Delete the task in submission
    When user navigates to job detail view
    When user navigates submission page
    And user navigates to submission engagement tab
    And user deletes the task in submission

  @AddNote
  Scenario: Add a new note
    When user navigates to job detail view
    When user navigates submission page
    And user navigates to submission engagement tab
    And user adds a note in submission

  @EditNote
  Scenario: Edit the existing note
    When user navigates to job detail view
    When user navigates submission page
    And user navigates to submission engagement tab
    And user edits the note in submission

#  @PinNote
#  Scenario: Pin the note
#    When user navigates to job detail view
#    When user navigates submission page
#    And user navigates to submission engagement tab
#    And user pins the note in submission

  @DeleteNote
  Scenario: Delete the note
    When user navigates to job detail view
    When user navigates submission page
    And user navigates to submission engagement tab
    And user deletes the note in the submission

  @UploadDocument
  Scenario: Upload a new document
    When user navigates to job detail view
    When user navigates submission page
    And user navigates to submission engagement tab
    And user uploads a document in submission

  @DeleteDocument
  Scenario: Delete the uploaded document
    When user navigates to job detail view
    When user navigates submission page
    And user navigates to submission engagement tab
    And user deletes the document in submission



