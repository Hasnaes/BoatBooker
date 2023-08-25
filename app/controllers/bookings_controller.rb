class BookingsController < ApplicationController
  before_action :set_boat, except: :my_dashboard

  def create
    @booking = Booking.new
    @booking.boat = @boat
    @booking.user = current_user

    @booking.start_date = params[:booking][:start_date]
    @booking.end_date = params[:booking][:end_date]
    days = (@booking.end_date - @booking.start_date).to_i
    @booking.total_price = @boat.price * days

    if @booking.save
      redirect_to boat_my_dashboard_path, notice: " 👌 Booking successful!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_dashboard
    @bookings = Booking.where(user: current_user)
  end

  private

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
