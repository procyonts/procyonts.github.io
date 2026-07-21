@forgotPassword
Feature: Password Recovery
  This feature validates the forgot password functionality for registered users.

  @RecoverPassword
  Scenario: Successfully request a password reset link
    Given User is on the forgot password page
    When User enters email from "signup" properties and clicks Send Reset Link
    Then User should see a confirmation for the reset link
