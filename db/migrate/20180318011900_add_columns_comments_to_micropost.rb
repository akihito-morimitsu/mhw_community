class AddColumnsCommentsToMicropost < ActiveRecord::Migration
  def change
    add_reference :microposts, :micropost, index: true
  end
end
