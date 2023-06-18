class ChangeEventsEndDateNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :events, :end_date, false
  end
end
