class TenantsController < ApplicationController
  def index
    if !params[:landlord_id]
      tenants = Tenant.all
      render json: tenants
    else
      tenants = Landlord.find(params[:landlord_id]).tenants
      render json: tenants
    end
  end

  def show
    if !params[:landlord_id]
      id = params[:id]
      tenant = Tenant.find(id)
      render json: tenant
    else
      id = params[:id]
      landlord_id = params[:landlord_id]
      tenant = Landlord.find(landlord_id).tenants.find(id)
      render json: tenant
    end
  end

  def create
    # param keys may subject to change depending on the body of the post request
    if !params[:landlord_id]
      new_tenant = Tenant.new(first_name: params[:first_name], last_name: params[:last_name])
      if new_tenant.valid?
        Tenant.create(first_name: params[:first_name], last_name: params[:last_name])
        # message can be altered for better UI experience in the future
        render json: {message: "Tenant successfully created"}
      else
        # message can be altered for better UI experience in the future
        render json: {message: "There was an error."}
      end
    else
      new_tenant = Tenant.new(first_name: params[:first_name], last_name: params[:last_name])
      if new_tenant.valid?
        Tenant.create(first_name: params[:first_name], last_name: params[:last_name])
        # all inputs for creating the Review are default values. Only the landlord_id and tenant_id are actual correct values. MUST BE UPDATED!!! Needed the default values to pass Review validations
        Review.create(start_date: Date.new(2000, 1, 1), end_date: Date.new(2000, 1, 1), landlord_id: params[:landlord_id], tenant_id: Tenant.last.id, address: "TBD", comment: "TBD")
        # message can be altered for better UI experience in the future
        render json: {message: "Tenant successfully created"}
      else
        # message can be altered for better UI experience in the future
        render json: {message: "There was an error."}
      end
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
