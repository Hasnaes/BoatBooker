class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boats = Boat.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR location ILIKE :query"
      @boats = @boats.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
    @markers = [
      {
        lat: @boat.latitude,
        lng: @boat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { boat: @boat }),
        marker_html: render_to_string(partial: "marker", locals: { boat: @boat }),
      }
    ]
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boats_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to boat_path(@boat)
  end

  def new
    @boat = Boat.new
  end

  def destroy
    @boat = Boat.find_by(id: params[:id])
    @boat.destroy
    redirect_to boats_path
  end
end

private

def boat_params
  params.require(:boat).permit(:name, :description, :capacity, :price, :location, :photo)
end


# private

# def set_boat
#   @boat = Boat.find(params[:id])
# end
