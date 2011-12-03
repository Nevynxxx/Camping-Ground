Feature: Display a list of Scenarios.
  As an anonymous user,
  I want to see information about scenarioss,
  So I can see which ones I haven't played.

  Scenario: There are no scenarios!
    Given an anonymous user
    And no scenarios
    When I visit the scenarios index
    Then I should see "Sorry, there are no scenarios yet"

