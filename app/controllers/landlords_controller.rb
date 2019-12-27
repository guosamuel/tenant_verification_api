class LandlordsController < ApplicationController
  def show
    id = params[:id]
    landlord = Landlord.find(id)
    render json: landlord
  end

  def create
    # param keys may subject to change depending on the body of the post request
    new_landlord = Landlord.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    if new_landlord.valid?
      Landlord.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
      render json: {message: "Landlord successfully created"}
    else
      render json: {message: "There was an error."}
    end
  end

  def update

  end

  def delete

  end
end
