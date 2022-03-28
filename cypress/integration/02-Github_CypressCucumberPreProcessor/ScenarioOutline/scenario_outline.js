/* global Then, When, Given */



// ======================== scenario_outline_string.js ========================

const fruitToJuice = {
  apple: "apple juice",
  pineapple: "pineapple juice",
  strawberry: "strawberry juice",
};

let juice = "";

// Given I put "<fruit>" in a juicer
Given("I put {string} in a juicer", (fruit) => {
  juice = fruitToJuice[fruit];
  expect(typeof juice).to.equal("string");
});

// When I switch it on
When("I switch it on", () => {
  expect(true).to.equal(true);
});

// Then I should get "<juice>"
Then("I should get {string}", (resultJuice) => {
  expect(resultJuice).to.equal(juice);
});


// ======================== scenario_outline_integer.js ========================

// you can have external state, and also require things!
let sum = 0;

When("I add {int} and {int}", (a, b) => {
  sum = a + b;
});

Then("I verify that the result is equal the {int}", (result) => {
  expect(sum).to.equal(result);
});


// ======================== scenario_outline_multiple_vars.js ========================

let var1 = "var1";
let var2 = "var2";

When("I enter variable {string} and {string}", (v1, v2) => {
  var1 = v1;
  var2 = v2;
});

Then("I verify that both variables have {string} as value", (value) => {
  expect(value).to.equal(var1);
  expect(value).to.equal(var2);
});


// ======================== scenario_outline_data_table.js ========================


let sum1 = { first: 0, second: 0, result: 0 };

When("I enter {int} and {int}", (a, b) => {
  sum1 = { first: a, second: b, result: a + b };
});

Then("I see following result table", (dataTable) => {
  dataTable.hashes().forEach((row) => {
    expect(sum1.first).to.equal(parseInt(row.first, 10));
    expect(sum1.second).to.equal(parseInt(row.second, 10));
    expect(sum1.result).to.equal(parseInt(row.result, 10));
  });
});
