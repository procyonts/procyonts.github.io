@login
Feature: Login Feature

  Scenario: Valid user logs in successfully
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
