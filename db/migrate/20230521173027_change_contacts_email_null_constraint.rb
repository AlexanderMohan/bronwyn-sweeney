class ChangeContactsEmailNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :contacts, :email, false
  end
end
