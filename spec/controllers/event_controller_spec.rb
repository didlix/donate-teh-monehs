module Eventeeeioioio
  describe EventController do

    let(:event) double(title: 'Battlestar Galactica', description: 'Are you a cylonian?', start: '2030-12-15 10:00', end: '2030-12-15 10:00' )

    describe 'POST #create' do
      it 'creates a new event' do
        Thing.should_receive(:create).with(event)
        post :create
      end
    end
  end
end
