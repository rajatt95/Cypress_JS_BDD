# /**  
# * @author Rajat Verma
# * https://www.linkedin.com/in/rajat-v-3b0685128/
# * https://github.com/rajatt95
# * https://rajatt95.github.io/
# * 
# * Course: Cypress -Modern Automation Testing from Scratch + Frameworks(https://www.udemy.com/course/cypress-tutorial/)
# * Tutor: Rahul Shetty (https://www.udemy.com/user/rahul445/)
# */

# /***************************************************/

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
    Then I see "Test Automation Engineer Dummy" in the title

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
      

