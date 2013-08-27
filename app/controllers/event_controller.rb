class EventController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to(@event, notice: "Successfully created product." )
    else
      render "new"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

end
