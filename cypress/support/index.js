// ***********************************************************
// This example support/index.js is processed and
// loaded automatically before your test files.
//
// This is a great place to put global configuration and
// behavior that modifies Cypress.
//
// You can change the location of this file or turn off
// automatically serving support files with the
// 'supportFile' configuration option.
//
// You can read more here:
// https://on.cypress.io/configuration
// ***********************************************************

// Import commands.js using ES2015 syntax:
import './commands'

// Alternatively you can use CommonJS syntax:
// require('./commands')

//https://www.youtube.com/watch?v=YV3qPvhJ-rg&ab_channel=remarkablemark
import 'cypress-xpath'

import 'cypress-mochawesome-reporter/register';

// https://github.com/dane-harnett/cypress-cucumber-attach-screenshots-to-failed-steps
import 'cypress-cucumber-attach-screenshots-to-failed-steps';

// https://www.youtube.com/watch?v=FB87Ylz8vko&t=344s&ab_channel=QABoxLet%27sTest
// afterEach(() => {
//  //   const screenshotsFolder = Cypress.config("screenshotsFolder");
//  const screenshotsFolder = Cypress.config("./cypress/screenshots");
//  if (window.cucumberJson?.generate) {
//         const testState = window.testState;
//         const stepResult =
//             testState.runTests[testState.currentScenario.name][testState.currentStep];
//         if (stepResult?.status === "failed") {
//             const screenshotFileName = `${testState.feature.name} -- ${testState.currentScenario.name} (failed).png`;
//             cy.readFile(
//                 `${screenshotsFolder}/${Cypress.spec.name}/${screenshotFileName}`,
//                 "base64"
//             ).then((imgData) => {
//                 stepResult.attachment = {
//                     data: imgData,
//                     media: { type: "image/png" },
//                     index: testState.currentStep,
//                     testCase: testState.formatTestCase(testState.currentScenario),
//                 };
//             });

//         }
//     }
// });