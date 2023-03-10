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

  def new
    @pattern = Pattern.new
  end

  def create
    @pattern = Pattern.new(pattern_params)
    @pattern.user = current_user
    if @pattern.save
      redirect_to dashboard_path, notice: 'Your pattern has been created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @pattern = Pattern.find(params[:id])
    if @pattern.delete
      redirect_to dashboard_path, notice: 'Your pattern has been deleted'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show_instructions
    @pattern = Pattern.find(params[:id])
    @instructions = @pattern.instructions.order('position ASC')
    @customised_instruction = CustomisedInstruction.new
    @order = Order.find_by(user: current_user, pattern: @pattern)
  end

  def show_steps
    if params[:step].present?
      @step = params[:step].to_i
    else
      @step = 1
    end
    @pattern = Pattern.find(params[:id])
    @instructions = []
    @categories = @pattern.categories.order('position ASC')
    # note - N + 1 query - inherently bad, trying to find a better way of doing it
    @categories.each do |category|
      category.instructions.order('position ASC').each do |instruction|
        @instructions << instruction
      end
    end
  end

  private

  def pattern_params
    params.require(:pattern).permit(:title, :description, :price, :difficulty, :fabric_usage, :sizing, image: [], pdf: [])
  end
end
