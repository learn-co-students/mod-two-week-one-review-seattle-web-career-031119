class SeasController < ApplicationController
  #define your controller actions here
  before_action :set_sea, only: [:show, :edit, :update]

  def index
    @seas = Sea.all
  end

  def show
  end

  def edit
  end

  def update
    @sea.update(params[:sea].permit!)
    redirect_to sea_path(@sea)
  end

  def new
    @sea = Sea.new
  end

  def create
    @sea = Sea.create(params[:sea].permit!)
    redirect_to sea_path(@sea)
  end


  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

  def set_sea
    @sea = Sea.find(params[:id])
  end

end
