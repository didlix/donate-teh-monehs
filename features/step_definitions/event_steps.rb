Given(/^I am on the create events page$/) do
  visit new_event_path
end

Given(/^I enter details about my event$/) do
  fill_in "event_title", with: "Dungeons and Dragons, with Pizza"
  fill_in "event_description", with: "Step 1: bring pizza from Pizza Lupa
    Step 2: bring booze
    Step 3: bring a Dungeon Master
    Step 4: Lose all your cool friends"
  fill_in "event_start", with: "2030-12-15 15:00"
  fill_in "event_end", with: "2030-12-15 21:00"
end

When(/^I save the event$/) do
  click_on "event_create"
end

Then(/^I should see a confirmation message$/) do
  page.should have_content('Successfully created product.')
end

Given(/^I have created an event$/) do
  event = {
    title: 'Battlestar Gaming Galacticon',
    description: 'Are You A Cylon?',
    start: '2030-12-15 15:00',
    end: '2030-12-15 21:00'
  }

  @event = Event.create(event)

  Event.all.count.should eq(1)
end

When(/^I visit the event$/) do
  visit event_path(@event)
end

Then(/^I should see information about the event$/) do
  page.should have_content('Battlestar Gaming Galacticon')
  page.should have_content('Are You A Cylon?')
  page.should have_content('2030-12-15 15:00')
  page.should have_content('2030-12-15 21:00')
end
