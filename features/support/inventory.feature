Feature: Inventory Management
  In order to see inventory items list
  As a user
  I want to be able to view all the items in the inventory

  Scenario: I view my inventory
    Given I am at the main website
    When I click on inventorymanagement button
    Then I should see items page
