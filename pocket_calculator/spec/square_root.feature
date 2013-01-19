Feature: Square root
  Because let's face it, doing an iterative search for a
  square root is tedious even with a pocket calculator.

  Background:
    Given I have a pocket calculator
    And it is turned on

  Scenario: Square root of zero
    When I press "0 SQRT"
    Then the display shows "0."

  @square-root
  Scenario: Square root of a square number
    When I press "1 6 9 SQRT"
    Then the display shows "13."

  @square-root @full
  Scenario: Square root of a non-square number
    When I press "9 9 SQRT"
    Then the display shows "9.949874371"

  @square-root
  Scenario: Square root at the start of a calculation
    When I press "2 5 SQRT + 6 ="
    Then the display shows "11."

  @square-root
  Scenario: Square root at the end of a calculation
    When I press "5 + 3 6 SQRT"
    Then the display shows "6."
    When I press "="
    Then the display shows "11."

  @square-root
  Scenario: Trying to make the square root of zero negative
    When I press "0 SQRT +/-"
    Then the display shows "0."

  @square-root @memory
  Scenario: Storing a square root calculation in memory
    When I press "1 0 0 + 4 9 SQRT M+"
    Then the display shows "107."
    When I press "AC MR"
    Then the display shows "107."




