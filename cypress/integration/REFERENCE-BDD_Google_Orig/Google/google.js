/**  
* @author Rajat Verma
* https://www.linkedin.com/in/rajat-v-3b0685128/
* https://github.com/rajatt95
* https://rajatt95.github.io/
* 
* Course: Cypress -Modern Automation Testing from Scratch + Frameworks(https://www.udemy.com/course/cypress-tutorial/)
* Tutor: Rahul Shetty (https://www.udemy.com/user/rahul445/)
*/

/***************************************************/

import { Given } from "cypress-cucumber-preprocessor/steps";
import { Then } from "cypress-cucumber-preprocessor/steps";

const url = 'https://google.com'
Given('I open Google page', () => {
  cy.visit(url)
})

Then(`I see {string} in the title`, (title) => {
  cy.title().should('include', title)
})