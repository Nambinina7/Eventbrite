class EventController < ApplicationController
  def show
  	@event = Event.find(params[:id])
  end

  def index
  	@events = Event.all
  end

  def new
  end

  def create
  end
end
