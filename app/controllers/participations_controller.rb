class ParticipationsController < ApplicationController
  def show
  end

  def index
    @event = Event.find(params[:event_id])
  end

  def new
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
     # Amount in cents
    @amount =  @event.price  

    customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'usd',
    })


    participation = Attendance.new
    participation.event = @event
    participation.participant = current_user

    if participation.save
      flash[:success] = "Félicitation"
      redirect_to @event
    else
      render :new
    end
    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
