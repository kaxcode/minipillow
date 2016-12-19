class HousesController < ApplicationController
  before_action :authenticate!, except: [:index]
  # GET /houses
  def index
    @houses = House.all
  end

  # GET /houses/1
  def show
    @house = House.find(params[:id])
  end

  # GET /houses/new
  def new
    @house = House.new
  end

  # GET /houses/1/edit
  def edit
    @house = House.find(params[:id])
  end

  # POST /houses
  def create
    @house = House.new(house_params)
    @house.user_id = logged_in?

    if @house.save
      redirect_to houses_path
    else
      render :new
    end
  end

  # PATCH/PUT /houses/1
  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to @house, notice: 'House was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /houses/1
  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_url, notice: 'House was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def house_params
      params.require(:house).permit(:cover_image, :address, :number_of_beds, :number_of_baths, :year_built, :sq_footage, :price, :description, :user_id)
    end
end
