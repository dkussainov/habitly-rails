class CreateRiminders < ActiveRecord::Migration[7.0]
  def change
    create_table :riminders do |t|
      t.time :time
      t.references :user, null: false, foreign_key: true
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
