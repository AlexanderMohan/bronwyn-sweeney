class ChangeContactsMessageNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :contacts, :message, false
  end
end
