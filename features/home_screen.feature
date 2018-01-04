Feature: Test Home Screen Functionality

  Scenario: Default values on Home Screen are Foot and Centimeter
    Given I land on home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

  Scenario: Show All button should be enable at launch
    Given I land on home screen
    Then Show All button should be disabled
    When I type "1" on application keyboard
    Then Show All button should be enabled

  Scenario Outline: Verify default conversion
    Given I land on home screen
    When I type "<target>" on application keyboard
    Then I should see result as "<result>"
  Examples:
    |target|result|
    |1     |30.48    |
    |2     |60.96    |
    |3     |91.44    |
    |9     |274.32   |
    |10    |304.8    |

  @wip
  Scenario: User able to add current conversion to Favorites list
    Given I land on home screen
    Then I press on favorites icon
    When I press on menu icon
    Then I press on Favorite conversions
    And I verify "Length" added to Favorite conversions list

  Scenario: User able to search by existing Conversion type
    Given I land on home screen
    When I press on search icon
    And I type "Temperature" in search field
    And I press return button on soft keyboard
    Then I see "Temperature" as a current unit converter
    And Left unit picker value should be "Celsius"
    And Right unit picker value should be "Fahrenheit"

  Scenario: User able to select values from unit pickers
    Given I land on home screen
    Then I select "Inch" from left unit picker
    When I type "1" on application keyboard
    Then I should see result as "2.54"