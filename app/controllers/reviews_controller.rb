class ReviewsController < ApplicationController
  before_action :set_pattern, only: [:new, :create, :edit , :update]

  def new
    @review = Review.new
    @order = @pattern.orders.find_by(user: current_user)
  end

  def create
    @order = @pattern.orders.find_by(user: current_user)
    @review = Review.new(review_params)
    @review.user = current_user
    @review.order_id = @order.id
    if @review.save
      redirect_to pattern_path(@pattern), notice: 'Your review has been created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @review = Review.find(params[:id])
    @pattern = Pattern.find(params[:pattern_id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to pattern_path(@pattern), notice: 'You review has been updated'
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to pattern_path(@review.order.pattern), status: :see_other
  end

  private

  def set_pattern
    @pattern = Pattern.find(params[:pattern_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
