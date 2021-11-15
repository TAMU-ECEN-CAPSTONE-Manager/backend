Feature: Reaching sponsorstudentproject page
  In order to reach sponsorstudentproject page
  As a user 
  I want to view the sponsorstudent page 
  
  Scenario: Redirecting to sponsorstudentproject
    Given I am at homepage
    When I click on Sponsor Student Project button
    Then I should see sponsor student project page