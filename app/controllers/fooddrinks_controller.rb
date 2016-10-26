class FooddrinksController < ApplicationController
  before_action :set_fooddrink, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  
  load_and_authorize_resource

  # GET /fooddrinks
  # GET /fooddrinks.json
  def index
    @results = @search.result
  end

  # GET /fooddrinks/1
  # GET /fooddrinks/1.json
  def show
    @fooddrinks = Fooddrink.all
  end

  # GET /fooddrinks/new
  def new
    @fooddrink = Fooddrink.new
  end

  # GET /fooddrinks/1/edit
  def edit
  end

  # POST /fooddrinks
  # POST /fooddrinks.json
  def create
    @fooddrink = Fooddrink.new(fooddrink_params)
    @fooddrink.user_id = current_user.id

    respond_to do |format|
      if @fooddrink.save
        format.html { redirect_to @fooddrink, notice: 'Fooddrink was successfully created.' }
        format.json { render :show, status: :created, location: @fooddrink }
      else
        format.html { render :new }
        format.json { render json: @fooddrink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fooddrinks/1
  # PATCH/PUT /fooddrinks/1.json
  def update
    respond_to do |format|
      if @fooddrink.update(fooddrink_params)
        format.html { redirect_to @fooddrink, notice: 'Fooddrink was successfully updated.' }
        format.json { render :show, status: :ok, location: @fooddrink }
      else
        format.html { render :edit }
        format.json { render json: @fooddrink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fooddrinks/1
  # DELETE /fooddrinks/1.json
  def destroy
    @fooddrink.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Fooddrink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fooddrink
      @fooddrink = Fooddrink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fooddrink_params
      params.require(:fooddrink).permit(:user_id, :name, :address, :foodtype, :file, :created_at, :price, :price_unit, :review)
    end
    
end
