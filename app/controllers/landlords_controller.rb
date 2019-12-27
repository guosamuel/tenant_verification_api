class LandlordsController < ApplicationController
  def show
    id = params[:id]
    landlord = Landlord.find(id)
    render json: landlord
  end

  def create

  end

  def update

  end

  def delete

  end
end
