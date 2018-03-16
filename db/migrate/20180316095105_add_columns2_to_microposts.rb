class AddColumns2ToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :circle, :string
    add_column :microposts, :comment2, :text
    add_column :microposts, :timezone, :string
    add_column :microposts, :receptionist, :string
  end
end
