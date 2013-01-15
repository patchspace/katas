Feature: Changing operation
  Sometimes you press the wrong key and want to use a
  different operation. Let's not punish the stupid, the
  clumsy, or the drunk.

  Background:
    Given I have a pocket calculator
    And it is turned on

  Scenario: Pressing "+", whoops - I mean "-"
    One example should suffice.

    When I press "4 5 6 + - 1 2 3 ="
    Then the display shows "333."
