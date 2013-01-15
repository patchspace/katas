Feature: Clear
  Sometimes you need to clear all or part of a calculation.
  It's quicker than waiting for the calculator to turn off.
  It's not as flexible as backspace, but it's much simpler.

  Background:
    Given I have a pocket calculator
    And it is turned on

  Scenario: Clear all [AC]
    When I press "1 2 3 + 4 5 6 AC"
    Then the display shows "0."

  Scenario: Clear all [AC] mid-calculation
    It's like it was just turned on

    When I press "1 2 3 + 4 5 6 AC 1 2 3 ="
    Then the display shows "123."

  Scenario: Clear [C]
    When I press "1 2 3 + 4 5 6 C"
    Then the display shows "0."

  Scenario: Clear [C] mid-calculation
    We only reset the last entered number

    When I press "1 2 3 + 4 5 6 C 1 2 3 ="
    Then the display shows "246."
