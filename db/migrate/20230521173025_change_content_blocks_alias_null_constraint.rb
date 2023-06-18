class ChangeContentBlocksAliasNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :content_blocks, :alias, false
  end
end
