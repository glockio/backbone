class ReadingsController < ApplicationController
  respond_to :json

  def index

  end

  def create 
    flash
    @reading=Reading.new(reading_params)
    if @reading.save 
      flash[:success]= "was Created"
      redirect_to root_path
    else 
      flash[:error]=" Not Created "
      redirect_to root_path
    end 

  end


  private 

  def reading_params
    params.require(:reading).permit(:sugar_level)
  end 
end
