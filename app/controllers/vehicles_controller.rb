class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource except: [:create, :update]
    #https://github.com/ryanb/cancan/issues/835

  # GET /vehicles
  # # GET /vehicles.json
  def index
    if current_user
      @transactions = current_user.transactions
    elsif current_company_user
      @vehicles = current_company_user.company_profile.vehicles
    else 
      @vehicles = Vehicle.all
    end
  end

  # # GET /vehicles/1
  # # GET /vehicles/1.json
  # def show
  #   @vehicle = Vehicle.find(params[:id])
  # end

  # # GET /vehicles/new
  # def new
  #   #@vehicle = Vehicle.new
  # end

  # # GET /vehicles/1/edit
  # def edit
  # end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      flash[:notice] = "The new vehicle has been created!"
      redirect_to @vehicle
    else
      render :action => "new"
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    if @vehicle.update_attributes(vehicle_params)
      flash[:notice] = "New vehicle has been updated"
      redirect_to @vehicle
    else
      render :action => "edit"
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy

    flash[:notice] = "Vehicle has been deleted"
    redirect_to vehicles_url

    # respond_to do |format|
    #   format.html { redirect_to vehicles_url }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:make, :kind, :year, :color, :image, :user_id, :company_profile_id, :vehicle_id)
    end
end
