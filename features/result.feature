Feature: User can see the result
    In order to win a roun Rock 'n' Swing
    Being absolutely ace at this game
    I have to choose rock

    Scenario: User wins
        Given I am on the page "/choose"
        When I choose Rock!
        Then I am on the page "/result"
        And I win
        Then I should see "you are an animal!"

    Scenario: User looses
    	Given I am on the page "/choose"
    	When I choose Rock!
    	Then I am on the page "/result"
    	And I loose
    	Then I should see "you are a looser."

    Scenario: The game is a draw
    	Given I am on the page "/choose"
    	When I choose Rock!
    	Then I am on the page "/result"
    	And the game is a draw
    	Then I should see "keep trying!"