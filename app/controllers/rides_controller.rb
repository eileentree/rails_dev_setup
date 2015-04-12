class RidesController < ApplicationController
  respond_to :json
  before_action :set_ride, only: [:show, :update, :destroy]

  def index
    @ride = Ride.all
    respond_with @ride
  end

  def show
      respond_with @ride
  end

  def update
      if @ride.update(ride_params)
        respond_with @ride
      else
        respond_with @ride.errors
    end

  end

  def destroy
    @ride.destroy

    respond_with :success
  end

  def create
    @ride = Ride.new(ride_params)

      if @ride.save
        respond_with @ride
      else
        respond_with @ride.errors

      end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ride
      @ride = Ride.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ride_params
      params.permit(:RideName, :RideSponsorId, :RideDate, :RideLaunchTime, :RideStartLocation, :RideLength, :RidePace, :RideTerrain, :RideLeader, :Description)
    end
end


# "RideName"
# t.integer  "RideSponsorId"
# t.datetime "RideDate"
# t.datetime "RideLaunchTime"
# t.string   "RideTerrain"
# t.integer  "RideLeader"
# t.string   "Description"