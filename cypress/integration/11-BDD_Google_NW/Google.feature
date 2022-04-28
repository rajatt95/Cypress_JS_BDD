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

  # node cucumber-html-report.js
  I want to open a search engine
  
#  @focus
  @regression
  Scenario: Opening a search engine page
    Given I open Google page
    Then I see "Google" in the title

  @regression @bvt
  Scenario: Opening a search engine page for search text -> title validation
    Given I open Google page
    Then I see "Google" in the title
    When I search for "Test Automation Engineer"
    Then I see "Test Automation Engineer" in the title
    
    # @regression
    # Scenario: Opening a search engine page for search text using DataTable -> title validation
    #     Given I open Google page
    #     Then I see "Google" in the title
    #     When I search using DataTable for
    #     |   searchText  |
    #     |   Selenium  |
    #     |   Appium  |
    #     |   RestAssured  |
    #     |   Cypress  |
    #    Then I see "Test Automation Engineer" in the title

    # @regression @myexample
    # Scenario Outline: Opening a search engine page for search text using Scenario Outline -> title validation
    #     Given I open Google page
    #     Then I see "Google" in the title
    #     When I search using Scenario Outline and Examples for <searchText>
    # Examples:
    #         |searchText     |
    #         |Selenium       |
    #         |Appium         |
    #         |RestAssured    |
    #         |Cypress        |