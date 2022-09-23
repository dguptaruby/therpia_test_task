class UserProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /user or /user.json
  def index
    if current_user.is_admin?
    @users = User.all
  elsif current_user.is_manager?
    @users = User.where(company_id: current_user.company_id)
  else
    @users = User.where(id: current_user.id)
    end
      
  end

  # GET /user/1 or /user/1.json
  def show
  end

  # GET /user/new
  def new
    @user = User.new
    @image = Image.new
    authorize @user
  end

  # GET /user/1/edit
  def edit
  	@image = Image.new
  end

  # POST /user or /user.json
  def create
    @user = User.new(user_params)
     authorize @user

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_profile_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/1 or /user/1.json
  def update
    authorize @user
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_profile_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/1 or /user/1.json
  def destroy
    authorize @user
    @user.destroy

    respond_to do |format|
      format.html { redirect_to user_profiles_url, notice: "user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :start_date, :end_date, :monthly_charge,
               :user_role, :is_active, :notes, :company_id, image_attributes: {})
    end
end
