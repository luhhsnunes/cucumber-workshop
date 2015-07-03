Feature: Users can log into the system

As a website user
I want to be able to login
So that I can access restricted areas on the website

Scenario: User logs in with a valid credential
Given I am at the login page
When I login with a username and password
And the credentials are valid
Then I see a message informing that I have successfully logged in
Then I see the page with my personal profile


