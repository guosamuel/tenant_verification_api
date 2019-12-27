class LandlordsController < ApplicationController
  def index
    landlords = Landlords.all
    render json: landlords
  end

  def create

  end

  def update

  end

  def delete

  end
end
