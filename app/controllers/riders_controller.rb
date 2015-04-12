class RidersController < ApplicationController
  respond_to :json
  before_action :set_rider, only: [:show, :update, :destroy]
  #before_action :authenticate, only: [:show, :update, :destroy]

  # GET /riders/1
  # GET /riders/1.json
  def show
    #needs rider-permission for showing
    respond_with @rider
  end

  # POST /riders
  # POST /riders.json
  def create
    @rider = Rider.new(rider_params)

      if @rider.save
        respond_with @rider
      else
        respond_with @rider.errors
      end

  end

  # PATCH/PUT /riders/1
  # PATCH/PUT /riders/1.json
  def update
    #needs rider-permission for updating
      if @rider.update(rider_params)
        respond_with @rider
      else
        respond_with @rider.errors
      end

  end

  # DELETE /Riders/1
  # DELETE /Riders/1.json
  def destroy
    #needs Rider-permission for destroying
    @rider.destroy

    respond_with :success
  end

  private
    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        @rider = Rider.where(api_key: token).first
      end
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_rider
      @rider = Rider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rider_params
      params.permit(:Name, :Age, :Addr1, :Addr2, :City, :State, :Zip, :Region, :Email, :Phone, :Password)
    end
end
