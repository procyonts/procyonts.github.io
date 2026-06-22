@client @bulkUpload
Feature: Client Bulk Upload

  @ClientBulkUpload
  Scenario: Upload a CSV file with 2 clients and verify they are created
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Settings and opens Client Bulk Upload page
    And User uploads a client CSV file
    And User clicks the Upload button for bulk clients
    Then Upload should complete with 2 clients created

  @ClientDelete
  Scenario: Navigate to clients and delete multiple clients
    Given User is on login page
    When User enters username and password from config file
    And User clicks on login button
    Then User should land on dashboard
    When User navigates to Clients page
    And User selects the first two clients from the list
    And User clicks the Delete Client button
    And User confirms the deletion of selected clients
    Then A toast message confirming client deletion should be displayed

