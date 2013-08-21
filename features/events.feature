Feature: Events

  As someone who is fed up with facebook events
  I want to invite my friends from many social networks to event
  So that I have fun with all of my friends


  Scenario: Create Event
    Given I am on the create events page
    And I enter details about my event
    When I save the event
    Then I should see a confirmation message
    And the event should be saved to my profile
