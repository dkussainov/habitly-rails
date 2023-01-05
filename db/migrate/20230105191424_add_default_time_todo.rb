class AddDefaultTimeTodo < ActiveRecord::Migration[7.0]
  def change
    change_column :to_do_lists, :time, :time, :default => DateTime.now
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
