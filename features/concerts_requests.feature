Feature: List Iceland Concerts

  As a API consumer
  I want the list of concerts in Iceland
  So that I am able to provide this information to the interested ones

  @api
  Scenario: API returns the list of concerts
    When I GET on '/concerts'
    Then I receive a list of concerts with the following details:
      | eventDateName |
      | name          |
      | dateOfShow    |
      | userGroupName |
      | eventHallName |
      | imageSource   |


