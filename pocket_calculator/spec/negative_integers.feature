Feature: Entering negative integers
  It's important that the display shows the right thing as
  we enter numbers. We don't care here about any calculations,
  just that the display is updating correctly.

  Background:
    Given I have a pocket calculator
    And it is turned on

  @negative
  Scenario: Entering a negative number
    When I press "1 2 3 +/-"
    Then the display shows "-123."

  @negative
  Scenario: Entering a negative number by pressing "+/-" half way through
    When I press "1 2 +/- 3"
    Then the display shows "-123."

  @negative
  Scenario: Entering a negative number and pressing "="
    When I press "1 2 3 +/- ="
    Then the display shows "-123."

  @negative
  Scenario: Entering a negative number by pressing "+/-" half way through, then pressing "="
    When I press "1 2 +/- 3 ="
    Then the display shows "-123."

  Scenario: Making a negative number positive
    When I press "1 2 3 +/- +/-"
    Then the display shows "123."

  @negative
  Scenario Outline: Pressing +/- after an operator
    When I press "1 2 3 <operator> +/-"
    Then the display shows "-123."
    When I press "7"
    Then the display shows "7."

    Examples:
      | operator |
      | +        |
      | -        |
      | *        |
      | /        |

  @negative
  Scenario: Pressing +/- after =
    When I press "1 2 3 = +/-"
    Then the display shows "-123."

  Scenario: Pressing +/- after = where the number is zero
    When I press "0 = +/-"
    Then the display shows "0."

  Scenario: Negative nothing
    Pressing +/- doesn't change the display if you haven't
    started entering a number yet.

    When I press "+/-"
    Then the display shows "0."

  @negative
  Scenario: Negative zero
    Pressing +/- always shows a minus sign, even if the
    number you've entered is zero.

    When I press "0 +/-"
    Then the display shows "-0."


