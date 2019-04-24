describe("Users on Amazon store", function() {
  var searchTerm = "Explore It";

  it("search for product", function() {
    // ARRANGE
    var searchTermEncoded = searchTerm.replace(/ /g, "+");
    cy.visit("https://amazon.com/");

    // ACT
    cy.get("#twotabsearchtextbox")
      .type(searchTerm)
      .type("{enter}");

    // ASSERT
    cy.url().should("include", "s?k=" + searchTermEncoded);
    cy.get(".s-result-item")
      .first()
      .should("contain", "Reduce Risk and Increase Confidence")
      .should("contain", "Elisabeth Hendrickson");
  });

  it("add item to cart", function() {
    // ARRANGE
    cy.visit("https://amazon.com/");
    cy.get("#twotabsearchtextbox").type(searchTerm);
    cy.get(".nav-search-submit > .nav-input").click();

    // ACT
    cy.get(".s-result-item .s-image")
      .first()
      .click();
    cy.get("#add-to-cart-button").click();

    // ASSERT
    cy.contains("Cart").should("be.visible");
    cy.get("#nav-cart-count").contains(1);
  });
});
