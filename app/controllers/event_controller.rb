class EventController < ApplicationController
  def show
  	@event = Event.find(params[:id])
  end

  def index
  	@events = Event.all
  end

  def new
     @event = Event.new
  end

  def create

      start_date = params["start_date"]
      duration = params["duration"]
      title = params["title"]
      description = params["description"]
      price = params["price"]
      location = params["location"]

    event = Event.new
    event.start_date = start_date
    event.duration = duration
    event.title = title
    event.description = description
    event.price = price
    event.location = location
    event.admin = current_user

 

    if event.save
      flash[:success] = "L'événement a bien été créé !"
      redirect_to event_path( event.id)
    else
      render :new
    end
  end
end

  