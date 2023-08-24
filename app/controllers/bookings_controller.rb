class BookingsController < ApplicationController
  before_action :set_boat, except: :my_dashboard

  def create

    @booking = Booking.new
    @booking.boat = @boat
    @booking.user = current_user
    # @boat = Boat.find(params[:boat_id])

    @booking.start_date = params[:booking][:start_date]
    @booking.end_date = params[:booking][:end_date]
    @booking.total_price = @boat.price * (@booking.end_date - @booking.start_date)

    if @booking.save
      redirect_to boats_path, notice: "Booking successful!"
    else
      render :new
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
