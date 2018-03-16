class CreateReceptionists < ActiveRecord::Migration
  def change
    create_table :receptionists do |t|

      t.timestamps
    end
  end
end
