Feature: Backspace
  If you've just entered the last digit of your screen-filling
  number wrong, you probably don't want to start over from the
  beginning. Pressing C is the nuke-from-orbit option, let's be
  kind and enable people to edit numbers. Adding backspace is
  the install-nuclear-power-plant option.

  Background:
    Given I have a pocket calculator
    And it is turned on

  Scenario: Deleting the last digit of an integer
    When I press "1 2 3 >"
    Then the display shows "12."

  Scenario: Deleting all the digits of an integer
    When I press "1 2 3 > > >"
    Then the display shows "0."

  Scenario: Make sure it's really dead
    When I press "1 2 3 > > > >"
    Then the display shows "0."

  @decimal
  Scenario: Deleting the last digit of a decimal
    When I press "1 2 3 . 4 5 >"
    Then the display shows "123.4"

  @decimal
  Scenario: Changing the last digit of a decimal
    When I press "1 2 3 . 4 5 > 9"
    Then the display shows "123.49"

  Scenario: Deleting all decimal places of a decimal
    When I press "1 2 3 . 4 5 > >"
    Then the display shows "123."

  @decimal
  Scenario: Changing all decimal places of a decimal
    When I press "1 2 3 . 4 5 > > 8 9"
    Then the display shows "123.89"

  Scenario: We didn't really want a decimal after all
    It's like that decimal place never existed

    When I press "1 2 3 . 4 > > 9"
    Then the display shows "129."

  Scenario: We didn't even mean to press "."
    It's like that decimal place never existed

    When I press "1 2 3 . > 9"
    Then the display shows "129."

  Scenario: Why was "." the first character we pressed?
    Is that zero really there?

    When I press ". 0 > > 1 2 3"
    Then the display shows "123."

  Scenario: Maybe we wanted to press "." after all
    When I press ". > . 1 2 3"
    Then the display shows "0.123"

  @negative
  Scenario: Edit a negative number
    When I press "1 2 3 +/- >"
    Then the display shows "-12."

  Scenario: Remove a negative number entirely
    It's like that negative number never existed

    When I press "1 2 3 +/- > > >"
    Then the display shows "0."

  Scenario: Remove a negative zero and replace with a positive number
    When I press ". 0 +/- > > 1 2 3"
    Then the display shows "123."

  @negative
  Scenario: Make an edited zero negative
    If a zero falls in a forest?

    When I press "> +/-"
    Then the display shows "-0."

  Scenario: Performing a calculation after editing the last number
    Calculates 123 + 45

    When I press "1 2 3 + 4 5 6 > ="
    Then the display shows "168."

  Scenario: A calculation where the second number came from editing the first
    Calculates 123 + 12

    When I press "1 2 3 + > ="
    Then the display shows "135."
