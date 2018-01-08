@home_screen
Feature: Test Home Screen Functionality

  Background:
    Given I land on home screen

  Scenario: Default values on Home Screen are Foot and Centimeter
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

  Scenario: Show All button should be enable at launch
    Then Show All button should be disabled
    When I type "1" on application keyboard
    Then Show All button should be enabled

  Scenario Outline: Verify default conversion
    When I type "<target>" on application keyboard
    Then I should see result as "<result>"
  Examples:
    |target|result|
    |1     |30.48    |
    |2     |60.96    |
    |3     |91.44    |
    |9     |274.32   |
    |10    |304.8    |

  Scenario: User able to add current conversion to Favorites list
    Then I press on favorites icon
    When I press on menu icon
    Then I press on Favorite conversions
    And I verify "Length" added to Favorite conversions list

  Scenario: User able to search by existing Conversion type
    When I press on search icon
    And I type "Temperature" in search field
    And I press return button on soft keyboard
    Then I see "Temperature" as a header name
    And Left unit picker value should be "Celsius"
    And Right unit picker value should be "Fahrenheit"

  Scenario Outline: User able to select values from unit pickers
    Then I select "<unit_type>" from left unit picker
    When I type "<amount>" on application keyboard
    Then I should see result as "<result>"
  Examples:
  |unit_type|amount|result|
  |Inch1     |1     |2.54   |
  |Link1     |1     |20.1168|

  Scenario: User able to convert values
    When I press on menu icon
    Then I select "Volume" from menu
    Then I select "Cup" from right unit picker
    When I type "1" on application keyboard
    Then I should see result as "15.1416"

  Scenario: User able to switch scenarios
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"
    When I press on switch units button
    Then Left unit picker value should be "Centimeter"
    And Right unit picker value should be "Foot"

  Scenario: User able to cleanup conversion history
    When I press on menu icon
    Then I select "History" from menu
    Then I see "History" as a header name
    Then I should see text "No history right now"
    When I press on menu icon
    Then I select "Length" from menu
    When I type "1" on application keyboard
    When I press on menu icon
    Then I select "History" from menu
    And I verify that 1st result in history list is "Length"
    When I press delete from history at 1st row
    Then I should see text "No history right now"
