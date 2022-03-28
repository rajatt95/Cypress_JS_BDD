/// <reference types="Cypress" />

import { Given } from "cypress-cucumber-preprocessor/steps";
import { Then } from "cypress-cucumber-preprocessor/steps";

const url = 'https://google.com'

//Given I open Google page
Given('I open Google page', () => {
  cy.visit(url)
})

//Then I see "Google" in the title
Then(`I see {string} in the title`, (title) => {
  cy.title().should('include', title)
})

//When I search for "Test Automation Engineer"
Given('I search for {string}', (searchText) => {
  cy.get("input[title='Search']").type(searchText)
  //cy.get('.FPdoLc > center > .gNO89b').click({force : true})

  //Getting the element using Xpath
  cy.xpath("(//input[@aria-label='Google Search'])[2]").click({force : true})

})


//When I search for using Scenario Outline and Examples 
When("I search for using Scenario Outline and Examples {string}", (customSearchText) => {
  cy.get("input[title='Search']").type(customSearchText)
  cy.get('.FPdoLc > center > .gNO89b').click({force : true})
})

//When I search for using Scenario Outline and Examples 
// When("I search for using Scenario Outline and Examples {string}", (customSearchText) => {
//   cy.get("input[title='Search']").type(customSearchText)
//   cy.get('.FPdoLc > center > .gNO89b').click({force : true})
// })


/* global Then, When, Given */

// const fruitToJuice = {
//   apple: "apple juice",
//   pineapple: "pineapple juice",
//   strawberry: "strawberry juice",
// };

// let juice = "";

// Given("I put {string} in a juicer", (fruit) => {
//   juice = fruitToJuice[fruit];
//   expect(typeof juice).to.equal("string");
// });

// When("I switch it on", () => {
//   expect(true).to.equal(true);
// });

// Then("I should get {string}", (resultJuice) => {
//   expect(resultJuice).to.equal(juice);
// });




