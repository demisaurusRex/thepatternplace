class CustomisedInstructionsController < ApplicationController
  def show
    @customised_instruction = CustomisedInstruction.find(params[:id])
    @customised_instruction_steps = @customised_instruction.customised_instruction_steps.order('position ASC')
    @customised_instruction_steps_by_category = @customised_instruction_steps.group_by(&:category)
  end

  def create
    @order = Order.find(params[:order_id])
    @customised_instruction = CustomisedInstruction.new(customised_instruction_params)
    @customised_instruction.order_id = @order.id
    @customised_instruction.save
    @order.pattern.steps.each do |step|
      newstep = CustomisedInstructionStep.new(
        customised_instruction: @customised_instruction,
        instruction: step,
        position: step.position
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
