class ChangeContentBlocksBodyNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :content_blocks, :body, false
  end
end
