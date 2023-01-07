class PatternsController < ApplicationController
  def index
    if params[:query].present?
      @patterns = Pattern.where("title ILIKE :query OR description ILIKE :query", query: "%#{params[:query]}%")
    else
      @patterns = Pattern.all
    end
  end

  def show
    @pattern = Pattern.find(params[:id])
    @ordered_pattern = @pattern.orders.find_by(user: current_user)
    @reviews = @pattern.reviews
  end

<<<<<<< HEAD
  def show_instructions
    @pattern = Pattern.find(params[:id])
    @instructions = @pattern.instructions
  end
=======
>>>>>>> master
end
