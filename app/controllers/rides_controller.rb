class RidesController < ApplicationController
  respond_to :json, :html
  before_action :set_ride, only: [:show, :update, :destroy]

  def show
    respond_to do |format|
      format.html { redirect_to @ride }
      format.json { render json: @ride }
    end
  end

  def update
    respond_to do |format|
      if @ride.update(ride_params)
        format.html { redirect_to @ride }
        format.json { render json: @ride }
      else
        respond_with @ride.errors
      end
    end

  end

  def destroy
    @ride.destroy

    respond_with :success
  end

  def create
    @ride = Ride.new(ride_params)

    respond_to do |format|
      if @ride.save
        format.html { redirect_to @ride }
        format.json { render json: @ride }
      else
        format.html { redirect_to @ride.errors }
        format.json { render json: @ride.errors }

      end
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