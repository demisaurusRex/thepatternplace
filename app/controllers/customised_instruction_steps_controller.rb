class CustomisedInstructionStepsController < ApplicationController
  def update
    @customised_instruction_step = CustomisedInstructionStep.find(params[:id])
    @customised_instruction_step.update(customised_instruction_step_params)
    redirect_to pattern_steps(step: @customised_instruction_step.position)
  end

  private

  def customised_instruction_step_params
    params.require(:customised_instruction_step).permit(:comment)
  end
end
