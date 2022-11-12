describe('add_to_cart', () => {
  it('should add a product to the cart', () => {
    cy.visit('/')
    cy.contains('My Cart (0)')
    cy.contains('Add').first().click({force: true})
    cy.contains('My Cart (1)')
  });
});