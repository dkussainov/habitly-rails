class CreateHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :habits do |t|
      t.string :logo
      t.string :name
      t.string :repeat
      t.string :goal
      t.string :time_of_day
      t.datetime :start_date
   

      t.timestamps
    end
  end
end
