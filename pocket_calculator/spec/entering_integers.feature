Feature: Entering integers
  It's important that the display shows the right thing as
  we enter numbers. We don't care here about any calculations,
  just that the display is updating correctly.

  Background:
    Given I have a pocket calculator
    And it is turned on

  Scenario: A single digit
    Note: the display always shows a decimal point,
    even if we're entering an integer.

    When I press "1"
    Then the display shows "1."

  Scenario: Two digits
    When I press "1 2"
    Then the display shows "12."

  Scenario: All the digits
    When I press "1 2 3 4 5 6 7 8 9 0"
    Then the display shows "1234567890."

  @full
  Scenario: A maximum-length integer
    The display has a 10-digit limit

    When I press "1 2 3 4 5 6 7 8 9 0 1"
    Then the display shows "1234567890."

  Scenario: Pressing "=" after a number
    This starts entering a new number

    When I press "1 2 3 = 4"
    Then the display shows "4."
    When I press "5 6"
    Then the display shows "456."

  Scenario Outline: Pressing an operator after a number
    This also starts entering a new number

    When I press "1 2 3 <operator> 4"
    Then the display shows "4."
    When I press "5 6"
    Then the display shows "456."

    Examples:
      | operator |
      | +        |
      | -        |
      | *        |
      | /        |

  Scenario: Trying to enter leading zeros
    When I press "0 0 0"
    Then the display shows "0."