class JoyRideFunsController < ApplicationController
  before_action :set_joy_ride_fun, only: [:show, :update, :destroy]

  # GET /joy_ride_funs
  def index
    @joy_ride_funs = JoyRideFun.all

    render json: @joy_ride_funs
  end

  # GET /joy_ride_funs/1
  def show
    render json: @joy_ride_fun
  end

  # POST /joy_ride_funs
  def create
    @joy_ride_fun = JoyRideFun.new(joy_ride_fun_params)

    if @joy_ride_fun.save
      render json: @joy_ride_fun, status: :created, location: @joy_ride_fun
    else
      render json: @joy_ride_fun.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /joy_ride_funs/1
  def update
    if @joy_ride_fun.update(joy_ride_fun_params)
      render json: @joy_ride_fun
    else
      render json: @joy_ride_fun.errors, status: :unprocessable_entity
    end
  end

  # DELETE /joy_ride_funs/1
  def destroy
    @joy_ride_fun.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joy_ride_fun
      @joy_ride_fun = JoyRideFun.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def joy_ride_fun_params
      params.require(:joy_ride_fun).permit(:name, :image, :location, :comments)
    end
end
