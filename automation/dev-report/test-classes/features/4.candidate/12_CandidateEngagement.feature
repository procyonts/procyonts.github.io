@candidateDetail
Feature: candidateInDetailView

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When user navigates to candidateInDetailView

#  Scenario: user adds a cal logs
#  When User adds a call logs
  @taskCreation
  Scenario: Create a Task
    When user navigates to engagement
    When user create a task for can

  @editTask
  Scenario: Edit a Task
    When user navigates to engagement
    And user edits the task for can

  @deleteTask
  Scenario: Delete the task
    When user navigates to engagement
    And user deletes the task for can


  @AddNote
  Scenario: Add a new note
     When user navigates to engagement
    And user adds a note for can

  @EditNote
  Scenario: Edit the existing note
    When user navigates to engagement
    And user edits the note for can

  @DeleteNote
  Scenario: Delete the note
    When user navigates to engagement
    And user deletes the note for can

  @UploadDocument
  Scenario: Upload a new document
    When user navigates to engagement
    And user uploads a document for can

  @DeleteDocument
  Scenario: Delete the uploaded document
    When user navigates to engagement
    And user deletes the document for can


