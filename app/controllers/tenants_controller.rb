class TenantsController < ApplicationController
  def show
    id = params[:id]
    tenant = Tenant.find(id)
    render json: tenant
  end

  def create
    # param keys may subject to change depending on the body of the post request
    new_tenant = Tenant.new(first_name: params[:first_name], last_name: params[:last_name])
    if new_tenant.valid?
      Tenant.create(first_name: params[:first_name], last_name: params[:last_name])
      # message can be altered for better UI experience in the future
      render json: {message: "Tenant successfully created"}
    else
      # message can be altered for better UI experience in the future
      render json: {message: "There was an error."}
    end
  end

  def update
    id = params[:id]
    if Tenant.update(id, first_name: params[:first_name], last_name: params[:last_name]).valid?
      Tenant.update(id, first_name: params[:first_name], last_name: params[:last_name])
      updated_tenant = Tenant.find(id)
      # message can be altered for better UI experience in the future
      render json: {tenant: updated_tenant, message: "Tenant successfully updated"}
    else
      # message can be altered for better UI experience in the future
      render json: {message: "Update failed"}
    end
  end

  def destroy
    id = params[:id]
    Tenant.destroy(id)
    render json: {message: "Successfully deleted"}
  end
end
