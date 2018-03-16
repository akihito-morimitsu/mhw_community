class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :micropost, index: true
      t.text :body

      t.timestamps
    end
    add_index :comments , [:user_id, :micropost_id, :created_at] #<-インデックスを複合キーにて追加
  end
end
