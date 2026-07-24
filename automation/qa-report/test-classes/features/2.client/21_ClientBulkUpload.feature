@client @bulkUpload
Feature: Client Bulk Upload

  @ClientBulkUpload
  Scenario: Upload a CSV file with 1 client and verify it is created
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Settings and opens Client Bulk Upload page
    And User uploads a client CSV file
    And User clicks the Upload button for bulk clients
    Then Upload should complete with 1 client created

  @ContactDelete
  Scenario: Navigate to clients and delete contact from contact section
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When user navigates to first client
    And user chooses edit in the contact section
    And user deletes the contact and clicks save
    Then a toast message confirming contact deletion should be displayed

  @ClientDelete
  Scenario: Navigate to clients and delete a single client
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Clients page
    And User selects the first client from the list
    And User clicks the Delete Client button
    And User confirms the deletion of selected clients
    Then A toast message confirming client deletion should be displayed

