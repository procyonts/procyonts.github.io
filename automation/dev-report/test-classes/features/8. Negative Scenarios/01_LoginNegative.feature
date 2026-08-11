@authNegative
Feature: Auth Negative Scenarios

  # ───────────────────────────────────────────────────────────────────────────
  # LOGIN NEGATIVE SCENARIOS
  # ───────────────────────────────────────────────────────────────────────────

  @loginNegative @emptyEmail
  Scenario: Login fails when email is empty
    Given User is on login page
    When User submits login form with empty email
    Then User should see email required error message

  @loginNegative @emptyPassword
  Scenario: Login fails when password is empty
    Given User is on login page
    When User submits login form with empty password
    Then User should see password required error message

  @loginNegative @invalidCredentials
  Scenario: Login fails with invalid credentials
    Given User is on login page
    When User enters invalid credentials from properties
    And User clicks on login button
    Then User should see invalid credentials error message

  @loginNegative @invalidEmailFormat
  Scenario: Login fails when email format is invalid
    Given User is on login page
    When User enters invalid email format from properties
    And User clicks on login button
    Then User should see invalid email format error message

  # ───────────────────────────────────────────────────────────────────────────
  # FORGOT PASSWORD NEGATIVE SCENARIOS
  # ───────────────────────────────────────────────────────────────────────────

  @forgotPasswordNegative @forgotPasswordEmptyEmail
  Scenario: Forgot Password fails when email is empty
    Given User is on the forgot password page
    When User submits forgot password form with empty email
    Then User should see forgot password email required error

  @forgotPasswordNegative @forgotPasswordInvalidEmail
  Scenario: Forgot Password fails when email format is invalid
    Given User is on the forgot password page
    When User submits forgot password form with invalid email format from properties
    Then User should see forgot password invalid email format error

  @forgotPasswordNegative @forgotPasswordUnregistered
  Scenario: Forgot Password with unregistered email shows appropriate message
    Given User is on the forgot password page
    When User submits forgot password form with unregistered email from properties
    Then User should see forgot password unregistered email error

  # ───────────────────────────────────────────────────────────────────────────
  # SIGN UP NEGATIVE SCENARIOS
  # ───────────────────────────────────────────────────────────────────────────

  @signupNegative @signupEmptyFields
  Scenario: Sign Up fails when all fields are empty
    Given User is on the signup page
    When User submits signup form with all fields empty
    Then User should see signup required field errors

  @signupNegative @signupPasswordMismatch
  Scenario: Sign Up fails when passwords do not match
    Given User is on the signup page
    When User submits signup form with mismatched passwords from properties
    Then User should see password mismatch error

  @signupNegative @signupInvalidEmailFormat
  Scenario: Sign Up fails when email format is invalid
    Given User is on the signup page
    When User submits signup form with invalid email format from properties
    Then User should see signup invalid email format error

  @signupNegative @signupExistingEmail
  Scenario: Sign Up fails when email is already registered
    Given User is on the signup page
    When User submits signup form with existing email from properties
    Then User should see email already registered error
