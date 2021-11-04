Feature: Reaching about page
  In order to reach about page
  As a user 
  I want to view the about page 
  
  Scenario: Redirecting to aboutpage
    Given I am on homepage
    When I click on about button
    Then I should see about page
    Then I should view about page content