class PlacesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_place, only: %i[ show edit update destroy ]

  # GET /places or /places.json
  def index
    @places = Place.all
  end

  # GET /places/1 or /places/1.json
  def show
  end

  # GET /places/new
  def new
    set_node
    @place = Place.new
    authorize @place
  end

  # GET /places/1/edit
  def edit
    set_node
  end

  # POST /places or /places.json
  def create
    @place = Place.new(place_params)
     authorize @place

    respond_to do |format|
      if @place.save
        format.html { redirect_to place_url(@place), notice: "Place was successfully created." }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1 or /places/1.json
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to place_url(@place), notice: "Place was successfully updated." }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1 or /places/1.json
  def destroy
    @place.destroy

    respond_to do |format|
      format.html { redirect_to places_url, notice: "Place was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
       authorize @place
    end

    def set_node
      @node = Node.new
      @node = @place.node if @place.present?
    end

    # Only allow a list of trusted parameters through.
    def place_params
      params.require(:place).permit(:place_name, :company_id, node_attributes: {})
    end
end
