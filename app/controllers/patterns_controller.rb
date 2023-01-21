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
    @instructions = @pattern.steps.order('position ASC')
    @instructions_by_category = @instructions.group_by(&:category)
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
    @instructions = @pattern.steps.order('position ASC')
  end

  private

  def pattern_params
    params.require(:pattern).permit(:title, :description, :price, :difficulty, :fabric_usage, :sizing, image: [], pdf: [])
  end
end
