class AddColumnsToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :theme, :string
    add_column :microposts, :comment, :text
    add_column :microposts, :category, :string
  end
end
