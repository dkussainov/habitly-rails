class ChangeHabitsProgressToFloat0 < ActiveRecord::Migration[7.0]
  def change
    change_column :habits, :progress, :float, :default => 0.00
  end
end
