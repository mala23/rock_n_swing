Feature: User can see the result
    In order to win a roun Rock 'n' Swing
    Being absolutely ace at this game
    I have to choose rock

    Scenario: User can see the correct result
        Given I am on the page "/choose"
        When I choose Rock!
        And I win
        Then I should see "you are an animal!"