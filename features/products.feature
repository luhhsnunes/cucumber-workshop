Feature: Check for products on the website

  As a website user
  I want to be able to find existing products in the web store
  So that I am able to purchase what I want

  Scenario: Search for clothes
    Given I am at the home page
    When choose to find clothes
    Then I am redirected to the results page
    And I see the following items:
      | Cute Polo         |
      | Cute Pants tshirt |
      | Dress shirt       |
