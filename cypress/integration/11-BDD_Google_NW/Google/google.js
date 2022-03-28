/// <reference types="Cypress" />

import { Given } from "cypress-cucumber-preprocessor/steps";
import { When } from "cypress-cucumber-preprocessor/steps";
import { Then } from "cypress-cucumber-preprocessor/steps";


const url = 'https://google.com'

//Given I open Google page
Given('I open Google page', () => {
  cy.visit(url)
})

//Then I see "Google" in the title
Then('I see {string} in the title', (title) => {
  cy.title().should('include', title)
  cy.wait(2000)
})


//When I search for "Test Automation Engineer"
Given('I search for {string}', (searchText) => {
  cy.get("input[title='Search']").type(searchText)
  cy.get('.FPdoLc > center > .gNO89b').click({force : true})
})

//When I search using DataTable for
When('I search using DataTable for', (dataTable) => {
 // cy.get("input[title='Search']").type(dataTable.rawTable[1][0]) //Selenium
cy.get("input[title='Search']").type(dataTable.rows().get) //Selenium
 cy.get('.FPdoLc > center > .gNO89b').click({force : true})
})

//When I search using Scenario Outline and Examples for <searchText>
When('I search using Scenario Outline and Examples for {string}', (searchText) => {
    cy.get("input[title='Search']").type(searchText)
    cy.get('.FPdoLc > center > .gNO89b').click({force : true})
 })
 


