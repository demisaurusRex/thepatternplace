class CustomisedInstructionsController < ApplicationController
  def show
    @customised_instruction = CustomisedInstruction.find(params[:id])
  end

  def show_steps
    if params[:step].present?
      @step = params[:step].to_i
    else
      @step = 1
    end
    @customised_instruction = CustomisedInstruction.find(params[:id])
  end

  def create
    @order = Order.find(params[:order_id])
    @customised_instruction = CustomisedInstruction.new(customised_instruction_params)
    @customised_instruction.order_id = @order.id
    @customised_instruction.save
    @order.pattern.instructions.each do |instruction|
      newstep = CustomisedInstructionStep.new(
        customised_instruction: @customised_instruction,
        instruction: instruction,
        position: instruction.position
      )
      newstep.save!
    end
    redirect_to pattern_instructions_path(@order.pattern)
  end

  private

  def customised_instruction_params
    params.require(:customised_instruction).permit(:name)
  end
end
