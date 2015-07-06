Feature: Feedback when entering credit card details

In user testing we’ve seen a lot of people who made mistakes entering their credit card.
We need to be as helpful as possible here to avoiding losing users at this crucial stage of the transaction. 
Credit card numbers must be 16 digits long.

Background:
  Given I have chosen some items to buy
  And I am about to enter my credit card details

Scenario Outline: Credit card number validation
  When I enter a card number that’s '<Digits>' long
  And all the other details are correct
  And I submit the form
  Then I see a message advising me that '<Message>'
  Examples:
    | Digits |                         Message                                 |
    |  16    |                  The purchase is completed.                     |
    |  15    | The credit card number is too short. It must be 16 digits long. |
    |  17    | The credit card number is too long. It must be 16 digits long.  |
