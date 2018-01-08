@gestures
Feature: User able to use gestures

  Scenario: User able to swipe to open Left side menu
    Given I land on home screen
    When I swipe from left to right to open
    Then I should see left side menu
    When I swipe from right to left to close
    Then I see "Length" as a header name

  Scenario: User able to swipe to open Calculator
    Given I land on home screen
    When I swipe from right to left to open
    Then I see "Calculator" as a header name
    When I swipe from left to right to close
    Then I see "Length" as a header name