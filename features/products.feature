Feature: Products
  Products have a name and inventory
  The can be added and tracked
  
  Scenario: Add a product
    Given I am on the products page
    When I follow "New Product"
    And I fill in "Name" with "T-shirts"
    And I press "Create Product"
    Then I should be on the products page
    And I should see "Product was successfully created."
    And I should see "T-shirts" within "#products"