Feature: Pocket Calculator
  Let's just see that we can turn it on first

  Background:
    Given I have a pocket calculator

  Scenario: Turn it on
    When I press "AC"
    Then the display shows "0."
