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
    # @instruction = Instruction.new
    # email = @pattern.user.email
    # @username = email.match(/.*@/).to_s.chop.capitalize
  end

  def new
    @pattern = Pattern.new
  end

  def create
    @pattern = Pattern.new(pattern_params)
    @pattern.user = current_user
    @pattern.save
    redirect_to dashboard_path
  end

  def edit
    @pattern = Pattern.find(params[:id])
  end

  def update
    @pattern = pattern.find(params[:id])
    @pattern.update(pattern_params)
    @pattern.save
    redirect_to dashboard_path
  end

  def destroy
    @pattern = pattern.find(params[:id])
    @pattern.delete
    redirect_to dashboard_path
  end

  private

  def pattern_params
    params.require(:pattern).permit(:title, :description, :price, :difficulty, :images => [])
  end
end
