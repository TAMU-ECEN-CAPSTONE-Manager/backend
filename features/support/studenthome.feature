Feature: Reaching studenthome page
  In order to reach studenthome page
  As a user 
  I want to view the studenthome page 
  
  Scenario: Redirecting to studentpage
    Given I am at home
    When I click on studenthome button
    Then I should see studenthome page
    