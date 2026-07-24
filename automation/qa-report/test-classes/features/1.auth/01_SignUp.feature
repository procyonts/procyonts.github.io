@signup
Feature: User Registration
  This feature validates the signup process for new users on the XATS platform.

  @Registration
  Scenario: Successfully register a new user
    Given User is on the signup page
    When User fills the registration form with details from signup properties
    And User accepts the terms and clicks Create Account
    Then User should see a success message or be redirected to the dashboard
