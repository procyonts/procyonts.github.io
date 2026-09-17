@calendar
Feature: Calendar Navigation
  This feature validates the Calendar view available from the top navigation in the XATS platform.

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard

  @TaskInCalendar
  Scenario: Verify a task created in a Job appears in the Calendar
    When user navigates to first job
    And user navigates to job detail view
    And user navigates to engagement tab
    And user create a task
    When user clicks on the calendar icon in the top navigation
    Then user should be on the calendar page
    Then the created task should be visible in the calendar

  @MeetingInCalendar
  Scenario: Schedule an Online Meeting interview and verify it appears in the Calendar
    When user navigates to job detail view
    When user navigates submission page
    And user schedules an online meeting interview with first attendee
    When user clicks on the calendar icon in the top navigation
    Then user should be on the calendar page
    Then the scheduled meeting should be visible in the calendar

  @NavigateCalendar
  Scenario: Navigate Calendar through Day, Week and Month views
    When user clicks on the calendar icon in the top navigation
    Then user should be on the calendar page
    When user clicks the Day view button
    Then the calendar should display the Day view
    When user clicks the Week view button
    Then the calendar should display the Week view
    When user clicks the Month view button
    Then the calendar should display the Month view

  @FollowUpInCalendar
  Scenario: Schedule a Follow-up in Candidate Engagement and verify it appears under Follow-ups in Calendar
    When user navigates to candidateInDetailView
    And user schedules a follow up
    When user clicks on the calendar icon in the top navigation
    Then user should be on the calendar page
    Then the call log follow-up should be visible in the calendar

