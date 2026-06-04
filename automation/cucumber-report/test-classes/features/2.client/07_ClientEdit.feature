@clientEdit
Feature: Client Edit

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard

  @EditClient
  Scenario: Navigate to client and edit two fields
    When user navigates to first client
    And user clicks edit button on client
    And user edits two fields of client
    And user scrolls and saves client changes
