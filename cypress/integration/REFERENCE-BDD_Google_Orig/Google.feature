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
  
  @focus
  Scenario: Opening a search engine page
    Given I open Google page
    Then I see "Google" in the title