class ReviewsController < ApplicationController
  def new
    @pattern = Pattern.find(params[:pattern_id])
    @review = Review.new
  end
end
