Feature: Google Main Page

  I want to open a search engine
  
  @regression @smoke
  Scenario: Opening a search engine page
    Given I open Google page
    Then I see "Google" in the title

  @regression @bvt 
  Scenario: Opening a search engine page for search text -> title validation
    Given I open Google page
    Then I see "Google" in the title
    When I search for "Test Automation Engineer"
    Then I see "Test Automation Engineer" in the title

#  @regression @focus
#   Scenario: Opening a search engine page for search text -> title validation
#     Given I open Google page
#     Then I see "Google" in the title
#     When I search for using DataTable
#       | Automation Testing using Cypress |
#     Then I see "Automation Testing using Cypress" in the title

  @regression @sanity
  Scenario Outline: Opening a search engine page for search text -> title validation -> Scenario Outline with Examples <CustomSearchText>
    Given I open Google page
    Then I see "Google" in the title
#   When I search for "Automation Testing using Cypress"
    When I search for using Scenario Outline and Examples "<CustomSearchText>"
    
    Examples:
      | CustomSearchText |
      | Selenium         |
      | Appium           |
      | RestAssured      |
      | Cypress          |
      

