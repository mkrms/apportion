class HoursController < ApplicationController
  def index
    @hours = Hour.all
  end

  def show
  end

  def new
    @hour = Hour.new
  end

  def edit
  end

  def create
    @hour = Hour.new(sche_params)
    if @hour.save!
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @hour.update!(sche_params)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    if @hour.destroy!
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def find_sche
    
  end

  def sche_params
    params.require(:hour).permit(:mon_hour, :date, :memo)
  end
end
