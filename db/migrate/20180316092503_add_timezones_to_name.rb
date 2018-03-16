class AddTimezonesToName < ActiveRecord::Migration
  def change
    add_column :timezones, :name, :string
  end
end
