class RenameCommentColumnToMicroposts < ActiveRecord::Migration
  def change
     rename_column :microposts, :comment, :tweet
  end
end
