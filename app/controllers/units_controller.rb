class UnitsController < ApplicationController
  before_action :set_unit, only: [:authorize_user, :show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:show, :edit, :update, :destroy]

  # GET /units/1
  # GET /units/1.json
  def show
  end

  # GET /units/new
  def new
    @unit = Unit.new
  end

  # GET /units/1/edit
  def edit
  end

  # POST /units
  # POST /units.json
  def create
    @unit = Unit.new(unit_params)

    respond_to do |format|
      if @unit.save
        format.html { redirect_to @unit, notice: 'Unit was successfully created.' }
        format.json { render :show, status: :created, location: @unit }
      else
        format.html { render :new }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /units/1
  # PATCH/PUT /units/1.json
  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to @unit, notice: 'Unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit }
      else
        format.html { render :edit }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit
      @unit = Unit.find(params[:id])
    end

    def authorize_user
      unless @unit.id == current_user.unit_id
        flash[:error] = "You do not have permission."
        redirect_to users_me_path(current_user), notice: "Access denied."
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_params
      params.require(:unit).permit(:user_building_id, :unit_number, :sqfootage, :number_bedrooms, :number_bathrooms, :number_rooms, :number_occupants)
    end
end
