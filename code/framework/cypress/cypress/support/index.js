// ***********************************************************
// This is processed and loaded automatically before your test
// files. This is a great place to put global configuration and
// behavior that modifies Cypress.
//
// Read more at https://on.cypress.io/configuration
// ***********************************************************

// Import commands.js using ES2015 syntax:
import './commands'

// Pass anything here you'd normally pass to cy.server()
Cypress.Server.defaults({
    //whitelist: (xhr) => true    // Mutes XHR requests
})
