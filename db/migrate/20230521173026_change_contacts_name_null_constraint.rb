class ChangeContactsNameNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :contacts, :name, false
  end
end
