@jobProspects
Feature: Job Prospects Feature
  This feature covers adding an existing candidate to job prospects in the Job Detail View page.

  Background:
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button

  @AddCandidateToProspects
  Scenario: Add an existing candidate to prospects
    When user navigates to first job
    And user clicks prospects tab
    And user clicks add existing candidate
    And user searches candidate "Sujith D" and selects candidate checkbox
    And user clicks add selected to prospects button
    Then candidate added to prospects toast should be displayed

  @TriggerOutreachCall
  Scenario: Trigger outreach call for a prospect
    When user navigates to first job
    And user clicks prospects tab
    And user clicks call icon and selects call now
    Then call placed toast should be displayed

  @SubmitCandidateFromProspect
  Scenario: Submit candidate from prospect to a job
    When user navigates to first job
    And user clicks prospects tab
    And user clicks submit to pipeline arrow icon
    And user fills candidate submission form details
    And user clicks submit candidate button
    Then candidate application submitted toast should be displayed

  @ViewProspectConversationLogs
  Scenario: View candidate conversation logs via eye button
    When user navigates to first job
    And user clicks prospects tab
    And user clicks eye button on prospect row
    Then voice campaign logs should contain outgoing call or follow up call

  @RemoveProspect
  Scenario: Remove prospect from prospect list
    When user navigates to first job
    And user clicks prospects tab
    And user clicks remove icon on prospect row
    And user clicks confirm remove button on popup
    Then prospect should be removed from list




