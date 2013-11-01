class LocatablesController < ApplicationController
  before_action :set_locatable, only: [:show, :edit, :update, :destroy]
  
  #Workaround for https://github.com/ryanb/cancan/issues/835
  load_and_authorize_resource except: [:create, :update]

  # # GET /locatables
  # def index
  #   @locatable = Locatable.all
  # end

  # # GET /locatables/1
  # def show
  # end

  # # GET /locatables/new
  # def new
  #   @locatable = locatable.new
  # end

  # # GET /locatables/1/edit
  # def edit
  # end

  # # POST /locatables
  def create
    @locatable = Locatable.new(locatable_params)

    respond_to do |format|
      if @locatable.save
        format.html { redirect_to @locatable, notice: 'Locatable was successfully created.' }
        format.json { render action: 'show', status: :created, location: @locatable }
      else
        format.html { render action: 'new' }
        format.json { render json: @locatable.errors, status: :unprocessable_entity }
      end
    end
  end

  # # PATCH/PUT /locatables/1
  def update
    respond_to do |format|
      if @locatable.update(locatable_params)
        format.html { redirect_to @locatable, notice: 'Locatable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @locatable.errors, status: :unprocessable_entity }
      end
    end
  end

  # # DELETE /locatables/1
  def destroy
    @locatable.destroy
    respond_to do |format|
      format.html { redirect_to locatables_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locatable
      @locatable = Locatable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locatable_params
      params.require(:locatable).permit(:owner_type, :owner_id, :address_id)
    end
end
