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