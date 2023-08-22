class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def create
    @boat = Boat.create(boat_params)
    if @boat.save
      redirect_to boats_path(@boat)
    else
      render :new
    end
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
  params.require(:boat).permit(:name, :descriptin, :capacity, :price, :location, :photos)
end


# private

# def set_boat
#   @boat = Boat.find(params[:id])
# end
