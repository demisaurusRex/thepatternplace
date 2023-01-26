class CustomisedInstructionStepsController < ApplicationController
  def show
    @customised_instruction = CustomisedInstruction.find(params[:id])
    if params[:step].present?
      @step = params[:step].to_i
    else
      @step = 1
    end
    if params[:category_position].present?
      @category_position = params[:category_position].to_i
    else
      @category_position = 1
    end
    @category = @customised_instruction.custom_categories.where(position: @category_position).first

    @customised_instruction_steps = @customised_instruction.customised_instruction_steps.order('position ASC')

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
    @customised_instruction_step.remove_from_list
    @customised_instruction_step.update(
      custom_category_id: customised_instruction_step_params[:custom_category].to_i
    )
    # @customised_instruction_step.insert_at(@customised_instruction_step.custom_category.customised_instruction_steps.length + 1)
    redirect_to edit_customised_instruction_path(
      @customised_instruction_step.customised_instruction
    )
  end

  private

  def customised_instruction_step_params
    params.require(:customised_instruction_step).permit(:comment, :custom_category)
  end
end
