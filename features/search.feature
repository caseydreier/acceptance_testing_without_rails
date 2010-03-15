Feature: Search
  In order to test Javascript interaction on non-Rails applications 
  As the new employee at Singlebrook
  I want to make a proof-of-concept test using Cucumber, Selenium, and Webrat without rails

  Scenario: Perform a simple Google search.
    Given I am on the Google search page
    When I search for "Singlebrook"
    Then I should see a link to "Simplify with Singlebrook | Singlebrook Technology"

  Scenario: Click on a link revealed after the use of Javascript in the browser.
    Given I am on the Google search page
    When I search for "Singlebrook"
    And I click on the link "Show options..."
    And I click on the link "Related Searches"
    Then the page should contain the phrase "Related searches for singlebrook"