class PigsController < ApplicationController
  def index
    @pigs = Pig.all
  end

  def show
    @pig = Pig.find(params[:id])
  end

  def new
    @pig = Pig.new
  end

  def create
    @pig = Pig.new(pig_params)
    @pig.user = current_user
    if @pig.save
      redirect_to pigs_path
    else
      render :new
    end
  end

  private

  def pig_params
    params.require(:pig).permit(:name, :weight, :age, :profession, :bio)
  end
end
