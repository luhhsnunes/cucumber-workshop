Feature: Feedback when entering invalid credit card details

In user testing we’ve seen a lot of people who made mistakes entering their credit card. 
We need to be as helpful as possible here to avoiding losing users at this crucial stage of the transaction

Background:
Given I have chosen some items to buy
And I am about to enter my credit card details

Scenario: Credit card number is too short
When I enter a card number that’s only 15 digits long
And all the other details are correct
And I submit the form
Then the form should be redisplayed
And I should see a message advising me of the correct number of digits