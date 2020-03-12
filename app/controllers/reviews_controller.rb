class ReviewsController < ApplicationController
    def index 
        review = Review.all 
        render json: review 
    end

    def show
      id = params[:id]
      review = Review.find(id)
      render json: review
    end
  
    def create
      # param keys may subject to change depending on the body of the post request
      new_review = Review.new(review_params)
      if new_review.valid?
        Review.create(review_params)
        # message can be altered for better UI experience in the future
        render json: {review: review, message: "Review successfully created"}
      else
        render json: {message: "There was an error."}
      end
    end
  
    def update
      id = params[:id]
      if Review.update(id).valid?
        Review.update(id)
        updated_review = Review.find(id)
        # message can be altered for better UI experience in the future
        render json: {review: updated_review, message: "Review successfully updated"}
      else
        # message can be altered for better UI experience in the future
        render json: {message: "Update failed"}
      end
    end
  
    def destroy
        review = Review.find(params[:id])
        review.destroy 
        render json: review
    end

    private 

    def review_params
        params.require(:review).permit(:start_date, :end_date, :landlord_id, :tenant_id, :address, :comment)
    end
  end
  