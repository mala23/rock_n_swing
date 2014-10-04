Feature: User visits the page for the first time
    In order to start playing Rock 'n' Swing
    As a rocker and a swinger
    I have to register my name

    Scenario: User registers his name
        Given I am on the page "/"
        And I see "a game of rock, paper, scissors"
        And I fill in the form "username"
        When I click the button "Submit!"
        Then I should see "Choose your gesture:"