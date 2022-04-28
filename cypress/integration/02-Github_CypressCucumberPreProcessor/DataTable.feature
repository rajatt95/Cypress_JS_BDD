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

Feature: Being a plugin handling DataTable scenario

  As a cucumber cypress plugin which handles DataTables
  I want to allow people to write DataTable scenarios and run it in cypress

  Scenario: DataTable
    When I add all following numbers:
      | number | another number |
      | 1      | 2              |
      | 3      | 4              |
    Then I verify the datatable result is equal to 10


  Scenario: New line character
    Given I have a table with some escaped characters in it
      | foo      | bar      |
      | foo\nfoo | bar\nbar |
