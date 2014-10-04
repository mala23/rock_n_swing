Feature: User chooses a gesture
    In order to play Rock 'n' Swing
    Being on the choose page
    I have to choose a gesture

    Scenario: User chooses a gesture
        Given I am on the page "/choose"
        When I choose "Paper!"
        Then I should see "Bo!..."
        And I can click on "Play again!"