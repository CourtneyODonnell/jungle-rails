describe('product details', () => {
  it('visits the homepage', () => {
    cy.visit('/')
  })

  it("products are on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There are 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
  
  it('visits the product page', () => {
    cy.visit('/')
    cy.get('.products article').first().click()
    cy.url().should("include", "/products/2")
  });

});