class AddDefaultReminders < ActiveRecord::Migration[7.0]
  def change
    change_column :riminders, :time, :time, :default => DateTime.now
  end
end
