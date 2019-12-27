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
      # message can be altered for better UI experience in the future
      render json: {message: "Landlord successfully created"}
    else
      # message can be altered for better UI experience in the future
      render json: {message: "There was an error."}
    end
  end

  def update
    id = params[:id]
    if Landlord.update(id, first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password]).valid?
      Landlord.update(id, first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
      updated_landlord = Landlord.find(id)
      # message can be altered for better UI experience in the future
      render json: {landlord: updated_landlord, message: "Landlord successfully updated"}
    else
      # message can be altered for better UI experience in the future
      render json: {message: "Update failed"}
    end
  end

  def delete

  end
end
