class InstructionsController < ApplicationController

  def new
    @instruction = Instruction.new
    @category = category.new
  end

  def create
    @pattern = Pattern.find(params[:id])
    @instruction = Instruction.new(instruction_params)
    @instruction.pattern = @pattern
    @instruction.position = @pattern.category.instructions.length + 1
    if @instruction.save
      redirect_to dashboard_path, notice: 'Your instructions have been created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def instruction_params
    params.require(:instruction).permit(:description, :category, :image)
  end

end
