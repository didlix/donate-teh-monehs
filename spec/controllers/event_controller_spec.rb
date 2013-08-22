require 'spec_helper'

module Eventeeeioioio
  describe EventController do

    before(:each) do
      Event.stub!(:new).and_return(@event = mock_model('Event', :save => true, id: 1337))
    end

    let(:event) do
      {'title' => 'Battlestar Galactica', 'description' => 'Are you a cylonian?', 'start' => '2030-12-15 10:00', 'end' => '2030-12-15 10:00'}
    end

    describe 'POST #create' do
      it 'creates a new event' do

        Event.should_receive(:new).with(event).and_return(@event)

        post(:create, event: event)
      end

      it 'redirects to the show event action' do
        post(:create, event: event)

        response.should be_redirect
      end
    end
  end
end

