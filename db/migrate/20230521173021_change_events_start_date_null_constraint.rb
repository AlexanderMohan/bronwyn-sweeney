class ChangeEventsStartDateNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :events, :start_date, false
  end
end
