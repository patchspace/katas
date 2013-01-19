Feature: Entering negative decimals
  We should be able to enter decimals like we enter integers

  Background:
    Given I have a pocket calculator
    And it is turned on

  @negative @decimal
  Scenario: Entering a negative number
    When I press "1 . 2 3 +/-"
    Then the display shows "-1.23"

  @negative @decimal
  Scenario Outline: Entering a negative number by pressing "+/-" half way through
    When I press "<keys>"
    Then the display shows "-1.23"

    Examples:
      | keys       |
      | 1 +/- . 2 3 |
      | 1 . +/- 2 3 |
      | 1 . 2 +/- 3 |

  @negative @decimal
  Scenario: Entering a negative number and pressing "="
    When I press "1 . 2 3 +/- ="
    Then the display shows "-1.23"

  @negative @decimal
  Scenario: Entering a negative number by pressing "+/-" half way through, then pressing "="
    When I press "1 . 2 +/- 3 ="
    Then the display shows "-1.23"

  @decimal
  Scenario: Making a negative number positive
    When I press "1 . 2 3 +/- +/-"
    Then the display shows "1.23"

  @negative @decimal
  Scenario Outline: Pressing +/- after an operator
    When I press "1 . 2 3 <operator> +/-"
    Then the display shows "-1.23"
    When I press "7"
    Then the display shows "7."

    Examples:
      | operator |
      | +        |
      | -        |
      | *        |
      | /        |

  @negative @decimal
  Scenario: Negative zero
    Pressing +/- always shows a minus sign, even if the
    number you've entered is zero.

    When I press "0 . 0 +/-"
    Then the display shows "-0.0"

  @negative
  Scenario: Negative implicit zero without leading zero
    When I press ". 0 +/-"
    Then the display shows "-0.0"

  @negative
  Scenario: Negative implicit zero
    When I press ". +/-"
    Then the display shows "-0."


