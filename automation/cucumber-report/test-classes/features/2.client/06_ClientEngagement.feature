@clientDetail
Feature: clientInDetailView
 
  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When user navigates to clientInDetailView
 
#  Scenario: user adds a call logs
#    When User adds a call logs for client
 
  @AddNote
  Scenario: Add a new note
    When user navigates to engagement for client
    And user adds a note for client
 
  @EditNote
  Scenario: Edit the existing note
    When user navigates to engagement for client
    And user edits the note for client
 
  @DeleteNote
  Scenario: Delete the note
    When user navigates to engagement for client
    And user deletes the note for client
 
  @UploadDocument
  Scenario: Upload a new document
    When user navigates to engagement for client
    And user uploads a document for client
 
  @DeleteDocument
  Scenario: Delete the uploaded document
    When user navigates to engagement for client
    And user deletes the document for client
 
