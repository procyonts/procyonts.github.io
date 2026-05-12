@candidateDetail
Feature: candidateInDetailView

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When user navigates to candidateInDetailView

  Scenario: user adds a cal logs
  When User adds a call logs

  @AddNote
  Scenario: Add a new note
    And user adds a note for can

  @EditNote
  Scenario: Edit the existing note
    And user edits the note for can

  @DeleteNote
  Scenario: Delete the note
    And user deletes the note for can

  @UploadDocument
  Scenario: Upload a new document
    And user uploads a document for can

  @DeleteDocument
  Scenario: Delete the uploaded document
    And user deletes the document for can

  @taskCreation
  Scenario: Create a Task
    When user create a task for can