class RoastProfilesController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def rp_params
    params.require(:roast_profile).permit(:coffee, :date, :batch_size, :times, :temps, :is_celsius, :events, :user_id)
  end
end
