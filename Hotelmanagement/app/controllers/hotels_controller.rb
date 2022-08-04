class HotelsController < ApplicationController
 
  before_action :set_hotel, only: [:show, :update, :destroy]

  def show
    render json:@hotel
  end
  def index
    @hotels=Hotel.all
    render json:@hotels
  end

  def create
    @hotel=Hotel.new(hotel_params)
    if @hotel.save
      # flash[:notice]="Article was created successfully"
      # redirect_to @article
      render json:@hotel, status: :created, location: @hotel
    else
      render json:@hotel.errors, status: :unprocessable_entity
    end
  end

  def update
    if @hotel.update(hotel_params)
      render json:@hotel, status: :created, location: @hotel
    else
      render json:@hotel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @hotel.destroy
    
  end

  private 
  def hotel_params
    params.require(:hotel).permit(:hotel_name,:hotel_address)
  end
  
  def set_hotel
    @hotel = Hotel.find(params[:id])
  end
end
