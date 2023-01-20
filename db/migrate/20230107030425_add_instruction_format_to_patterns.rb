class AddInstructionFormatToPatterns < ActiveRecord::Migration[7.0]
  def change
    add_column :patterns, :instruction_format, :string
  end
end
