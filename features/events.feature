Feature: Events

  As someone who is fed up with facebook events
  I want to invite my friends from many social networks to event
  So that I have fun with all of my friends

  Background:
    Given I am on the create events page

    Scenario: Create Event
      And I enter details about my event
      When I save the event
      Then I should see a confirmation message

    Scenario: Create event with invalid details
      And I enter invalid details about my event
      When I save the event
      Then I should see an error message

  Scenario: View Event
    Given I have created an event
    When I visit the event
    Then I should see information about the event
