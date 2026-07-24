@client @clientNegative
Feature: Client Creation - Negative Scenarios

  @ClientEmptyForm
  Scenario: Submit empty client form and verify required field errors
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to client creation page
    And User clicks Next without filling any data
    Then Required field error messages should be displayed on client form

  @ClientInvalidEmail
  Scenario: Enter invalid email in client form and verify error
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to client creation page
    And User fills client name and enters an invalid email
    And User clicks Next on client form
    Then An email validation error should be displayed

  @ClientDuplicate
  Scenario: Submit a duplicate client and verify error toast
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to client creation page and submits a duplicate client
    Then A duplicate client error toast should be displayed
