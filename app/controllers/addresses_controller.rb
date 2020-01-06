class AddressesController < ApplicationController
    def index 
        address = Address.all 
        render json: address 
    end

    def show
      id = params[:id]
      address = Address.find(id)
      render json: address
    end

    def new 
        address = Address.new 
        render json: address
    end
  
    def create
      # param keys may subject to change depending on the body of the post request
      address = Address.new(address_params)
      if address.valid?
        # message can be altered for better UI experience in the future
         address = Address.create(address_params)
        render json: {address: address, message: "Address successfully created"}
      else
        render json: {message: "There was an error."}
      end
    end
  
    def update
      address = Address.find(params[:id])
      if address.valid?
        render json: {address: address.update(address_params), message: "Address successfully updated"}
      else
        render json: {message: "Update failed"}
      end
    end
  
    def destroy
        address = Address.find(params[:id])
        address.destroy 
        render json: {message: "Deleted successfully"}
    end

    private 

    def address_params
        params.require(:address).permit(:street1, :street2, :city, :state, :postal)
    end
  end
  
