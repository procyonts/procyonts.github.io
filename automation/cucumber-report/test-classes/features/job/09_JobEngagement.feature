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

#  @SubmitCandidate
#  Scenario: Submit a candidate
#    When user navigates to job detail view
#    When user submit candidate

  @TaskCreation
  Scenario: Create a task in Task Manager
    When user navigates to job detail view
    When user navigates to engagement tab
    And user create a task

  @Notes
  Scenario: Create notes
    When user navigates to job detail view
    When user navigates to engagement tab
    And user adds a note

  @editNotes
    Scenario: Note edit
    When user navigates to job detail view
    When user navigates to engagement tab
    And user edits the note

  @deleteNotes
    Scenario: User delete the note
    When user navigates to job detail view
    When user navigates to engagement tab
#    And user pins the note
    And user deletes the note

  @Document
  Scenario:  Upload documents
    When user navigates to job detail view
    When user navigates to engagement tab
    And user uploads a document

    @deleteDocument
    Scenario: Delete document
    When user navigates to job detail view
    When user navigates to engagement tab
    And user deletes the document




