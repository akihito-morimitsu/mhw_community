class CreateTimezones < ActiveRecord::Migration
  def change
    create_table :timezones do |t|

      t.timestamps
    end
  end
end
