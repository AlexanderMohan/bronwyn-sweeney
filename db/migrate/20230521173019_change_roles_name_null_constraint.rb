class ChangeRolesNameNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :roles, :name, false
  end
end
