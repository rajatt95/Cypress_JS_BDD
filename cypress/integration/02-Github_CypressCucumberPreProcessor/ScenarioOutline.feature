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

Feature: Being a plugin handling Scenario Outline

  As a cucumber cypress plugin which handles Scenario Outline
  I want to allow people to write Scenario Outline tests and run it in cypress

# ======================== scenario_outline_integer.js ========================

  Scenario Outline: Using Scenario Outlines
    When I add <provided number> and <another provided number>
    Then I verify that the result is equal the <provided>

    Examples:
      | provided number | another provided number | provided |
      | 1               | 2                       | 3        |
      | 100             | 200                     | 300      |


# ======================== scenario_outline_string.js ========================

  Scenario Outline: Use juicer with <fruit>
    Given I put "<fruit>" in a juicer
    When I switch it on
    Then I should get "<juice>"

    Examples:
      | fruit      | juice            |
      | apple      | apple juice      |
      | pineapple  | pineapple juice  |
      | strawberry | strawberry juice |

# ======================== scenario_outline_data_table.js ========================

  Scenario Outline: A calculation
    When I enter <first> and <second>
    Then I see following result table
      | first   | second   | result   |
      | <first> | <second> | <result> |

    Examples:
      | first | second | result |
      | 1     | 2      | 3      |
      | 3     | 4      | 7      |
      | 5     | 6      | 11     |


# ======================== scenario_outline_multiple_vars.js ========================

  Scenario Outline: Multiple variables <here> and <here>
    When I enter variable "<here>" and "<here>"
    Then I verify that both variables have "<here>" as value

    Examples:
      | here |
      | abc  |
      | pqr  |
      | xyz  |