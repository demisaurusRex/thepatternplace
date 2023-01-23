class StepsController < ApplicationController

  def new
    @step = Step.new
    @category = category.new
  end

  def create
    @pattern = Pattern.find(params[:id])
    @step = Step.new(step_params)
    @step.pattern = @pattern
    @step.position = @pattern.category.steps.length + 1
    if @step.save
      redirect_to dashboard_path, notice: 'Your instructions have been created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def step_params
    params.require(:step).permit(:description, :category, :image)
  end

end
