@custom_conversions
Feature: User able to create and manage custom conversions

  Background:
    Given I land on home screen

  Scenario: User able to create new conversion
    Then I press on menu icon
    Then I press on My conversions button
    Then I press on Create your first conversion button
    Then I type "Power" as a custom conversion name
    When I press on New Unit button
    Then I type "Horse Power" as unit name
    Then I type "HP" as unit symbol
    Then I type "1" as unit value
    Then I press submit checkmark on Custom Conversions screen
    When I press on New Unit button
    Then I type "Mule Power" as unit name
    Then I type "MP" as unit symbol
    Then I type "0.5" as unit value
    Then I press submit checkmark on Custom Conversions screen
    When I press on OK button on Custom Conversions screen
    Then I verify "Power" added to Custom conversions list