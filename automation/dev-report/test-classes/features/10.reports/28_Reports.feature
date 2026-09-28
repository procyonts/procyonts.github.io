@reports
Feature: Reports - Recruiter Performance
  This feature validates the Recruiter Performance report available from the Reports Hub,
  including data load, date range filtering, and PDF export.

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard

  @ReportsFilterAndExport
  Scenario: Verify Recruiter Performance report loads, filters by custom date range, and exports as PDF
    When user navigates to the Reports section
    And user opens the "Recruiter Performance" report
    Then the report data should be loaded
    When user selects a custom date range on the report
    And user applies the report date filter
    Then the report data should be loaded
    When user downloads the report as PDF
    Then the PDF export should be initiated successfully
    And a PDF file should be downloaded successfully