class AddProgressToHabits < ActiveRecord::Migration[7.0]
  def change
    add_column :habits, :progress, :integer, :default => 0
  end
end
