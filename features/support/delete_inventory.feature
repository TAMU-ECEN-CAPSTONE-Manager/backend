Feature: Remove Items from the Inventory
  In order to remove items from the inventory
  As an user
  I want to be able to remove items from the inventory

  Scenario: I delete items from the inventory
    Given I am on the inventory page and wanting to delete
    When I click on delete items from inventory
    Then I should be able to delete items from inventory
