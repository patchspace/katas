Feature: Decimal maths
  Decimal maths is the same as integer maths, except it uses... decimals.
  We will assume that all the other properties of the operations hold for
  decimals, and that the calculator doesn't have an entire duplicate
  computation unit for fractional numbers.

  Background:
    Given I have a pocket calculator
    And it is turned on

  @decimal
  Scenario: Basic addition
    When I press "1 2 . 3 4 + 5 6 . 7 8 ="
    Then the display shows "69.12"

  @decimal
  Scenario: Basic subtraction
    When I press "5 6 . 7 8 - 1 2 . 3 4 ="
    Then the display shows "44.44"

  @decimal
  Scenario: Basic multiplication
    When I press "1 2 . 3 4 * 5 6 . 7 8 ="
    Then the display shows "700.6652"

  @decimal
  Scenario: Basic division
    When I press "0 . 5 6 / 0 . 7 ="
    Then the display shows "0.8"

  @decimal @full
  Scenario: Truncation
    To one extra dp, the value of 1/7 is 0.1428571428, so
    we check here that the value is truncated not rounded.

    When I press "1 / 7 ="
    Then the display shows "0.142857142"



