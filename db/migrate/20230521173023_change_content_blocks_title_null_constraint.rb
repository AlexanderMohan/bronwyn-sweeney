class ChangeContentBlocksTitleNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :content_blocks, :title, false
  end
end
