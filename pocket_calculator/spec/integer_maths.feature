Feature: Integer maths
  Somebody probably bought this calculator in the hope it
  would help them do sums. We should at least be able to add
  whole numbers together.

  Background:
    Given I have a pocket calculator
    And it is turned on

  # Addition

  Scenario: Basic addition
    When I press "1 2 3 + 4 5 6 ="
    Then the display shows "579."

  Scenario: Chaining additions
    When I press "1 2 3 + 4 5 6 +"
    Then the display shows "579."
    When I press "7 8 9 ="
    Then the display shows "1368."

  Scenario: Continuing to add after calculating an answer
    When I press "1 2 3 + 4 5 6 = + 7 8 9 ="
    Then the display shows "1368."

  Scenario: Adding to the initial zero
    The calculator displays "0." when it's turned on, but
    we can treat that like a number we entered ourselves.

    When I press "+ 1 2 3 ="
    Then the display shows "123."

  # Subtraction

  Scenario: Basic subtraction
    When I press "4 5 6 - 1 2 3 ="
    Then the display shows "333."

  Scenario: Chaining subtractions
    When I press "4 5 6 - 1 2 3 -"
    Then the display shows "333."
    When I press "3 2 1 ="
    Then the display shows "12."

  Scenario: Continuing to subtract after calculating an answer
    When I press "4 5 6 - 1 2 3 = - 3 2 1 ="
    Then the display shows "12."

  Scenario: Subtracting from the initial zero
    The calculator displays "0." when it's turned on, but
    we can treat that like a number we entered ourselves.

    When I press "- 1 2 3 ="
    Then the display shows "-123."

  # Multiplication

  Scenario: Basic multiplication
    When I press "5 * 6 ="
    Then the display shows "30."

  # Division

  Scenario: Basic division
    When I press "5 6 / 8 ="
    Then the display shows "7."

  # Negative numbers

  Scenario: Adding a negative number to a positive one
    When I press "1 2 3 + 6 7 +/- ="
    Then the display shows "56."

  Scenario: Negating zero
    Pressing +/- doesn't add a minus sign if you haven't entered anything

    When I press "+/-"
    Then the display shows "0."

  Scenario: Pressing "+/-" after an operator, but before the next number
    The calculator will negate the number on the display if you press +/-
    after an operator, but this doesn't actually change the number you
    entered. It just lets you see what it would look like if it was
    negative. The next number you enter will be interpreted as positive.
    We don't want to let this feature go undocumented.

    When I press "1 2 3 + +/-"
    Then the display shows "-123."
    When I press "7"
    Then the display shows "7."
    When I press "="
    Then the display shows "130."
