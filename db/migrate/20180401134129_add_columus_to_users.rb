class AddColumusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :code, :string
    add_column :users, :introduction, :string
    add_column :users, :rank, :string
  end
end
