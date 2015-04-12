class DistancesController < ApplicationController
  respond_to :json
  before_action :set_distance, only: [:show, :update, :destroy]

  def show
    respond_with @distance
  end

  def update
    if @distance.update(distance_params)
      respond_with @distance
    else
      respond_with @distance.errors
    end

  end

  def destroy
    @distance.destroy

    respond_with :success
  end

  def create
    @distance = Distance.new(distance_params)

    if @distance.save
      respond_with @distance
    else
      respond_with @distance.errors

    end

  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_distance
    @distance = Distance.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def distance_params
    params.permit(:RideID, :Distance)
  end
end


# "RideName"
# t.integer  "RideID"
# t.float    "Distance"