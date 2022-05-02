const report = require('multiple-cucumber-html-reporter');

report.generate({
	jsonDir: './cypress/reports/cucumber-json',
	reportPath: './cypress/reports/cucumber-html-report/',
	metadata:{
        browser: {
            name: 'chrome',
            version: '99'
        },
        device: 'Local test machine',
        platform: {
            name: 'MacOS',
            version: '12.3'
        }
    },
    customData: {
        title: 'Run info',
        data: [
            {label: 'Project', value: 'Cypress BDD project'},
            {label: 'Release', value: '1.2.3'},
            {label: 'Cycle', value: 'B11221.34321'},
            {label: 'Execution Start Time', value: 'May 02, 2022, 06:05 PM PM IST'},
            {label: 'Execution End Time', value: 'May 02, 2022, 06:06 PM IST'}
        ]
    }
});