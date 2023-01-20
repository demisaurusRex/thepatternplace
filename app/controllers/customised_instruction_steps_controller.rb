class CustomisedInstructionStepsController < ApplicationController
  def show
    @customised_instruction = CustomisedInstruction.find(params[:id])
    if params[:step].present?
      @step = params[:step].to_i
    else
      @step = 1
    end
    @category = params[:category] if params[:category].present?

    @customised_instruction_steps = @customised_instruction.customised_instruction_steps.order('position ASC')
    customised_instruction_steps_by_category = @customised_instruction_steps.group_by(&:category)

    @categories = customised_instruction_steps_by_category.keys
    @customised_instruction_steps = customised_instruction_steps_by_category[@category] if @category
  end

  def update
    @customised_instruction_step = CustomisedInstructionStep.find(params[:id])
    @customised_instruction_step.update(customised_instruction_step_params)
    redirect_to customised_instruction_steps_path(
      @customised_instruction_step.customised_instruction,
      step: @customised_instruction_step.position
    )
  end

  def update_category
    @customised_instruction_step = CustomisedInstructionStep.find(params[:id])
    @customised_instruction_step.update(customised_instruction_step_params)
    redirect_to customised_instruction_path(
      @customised_instruction_step.customised_instruction
    )
  end

  private

  def customised_instruction_step_params
    params.require(:customised_instruction_step).permit(:comment, :category)
  end
end
