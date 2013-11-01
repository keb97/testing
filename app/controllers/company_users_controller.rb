class CompanyUsersController < ApplicationController
  before_action :set_company_user, only: [:show, :edit, :update, :destroy]
  
  #Workaround for https://github.com/ryanb/cancan/issues/835
  load_and_authorize_resource except: [:create, :update]

  # # GET /company_users
  # def index
  #   if current_user
  #     @transaction = current_user.company_users.sort_by &:dropoff_date
  #   elsif current_company_user
  #     @transaction = current_company_user.company_profile.company_users.sort_by &:dropoff_date
  #   else 
  #     @transaction = Transaction.all.sort_by &:dropoff_date
  #   end
  # end

  # # GET /company_users/1
  # def show
  # end

  # GET /company_users/new
  def new
    @company_user = CompanyUser.new
  end

  # # GET /company_users/1/edit
  # def edit
  # end

  # POST /company_users
  # POST /company_users.json
  def create
    @company_user = CompanyUser.new(company_user_params)

    respond_to do |format|
      if @company_user.save
        format.html { redirect_to @company_user, notice: 'Company user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @company_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @company_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_users/1
  # PATCH/PUT /company_users/1.json
  def update
    respond_to do |format|
      if @company_user.update(company_user_params)
        format.html { redirect_to @company_user, notice: 'Company user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @company_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_users/1
  # DELETE /company_users/1.json
  def destroy
    @company_user.destroy
    respond_to do |format|
      format.html { redirect_to company_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_user
      @company_user = CompanyUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_user_params
      params.require(:company_user).permit(:pickup_address, :dropoff_address, :pickup_date, :pickup_time, :dropoff_date, :dropoff_time, :user_id, :company_profile_id, :vehicle_id)
    end
end
