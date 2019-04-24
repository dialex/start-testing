describe('Amazon homepage', function () {
    it('is online', function () {
        cy.visit("https://amazon.com/")
    })

    it('renders the UI', function () {
        cy.visit("https://amazon.com/")
        cy.get('#twotabsearchtextbox')
        cy.contains("Departments")
        cy.contains("Cart")
    })
})
