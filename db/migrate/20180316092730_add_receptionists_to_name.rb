class AddReceptionistsToName < ActiveRecord::Migration
  def change
    add_column :receptionists, :name, :string
  end
end
