class FlowersController < ApplicationController
  before_action :find_flower, only: [:show, :edit, :update, :destroy]
  def index
    @flowers = Flower.all
  end

  def show

  end

  def new
    @flower = Flower.new
  end

  def create
    @flower = Flower.new flower_params
    if @flower.save
      redirect_to flower_path(@flower)
    else
      render 'new'
    end
  end
  def edit

  end

  def update

  end

  def destroy

  end


  private
  def find_flower
    @flower = Flower.find(params[:id])
  end

  def flower_params
    params.require(:flower).permit(:name)
  end
end
