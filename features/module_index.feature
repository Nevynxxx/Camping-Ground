Feature: Display a list of Modules.
  As an anonymous user,
  I want to see information about modules,
  So I can see which ones I haven't played.

  Scenario: There are no modules!
    Given an anonymous user
    And no modules
    When I visit the modules index
    Then I should see "Sorry, there are no modules yet"

