class CustomisedInstructionStepsController < ApplicationController
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
