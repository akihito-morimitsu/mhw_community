class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :micropost
  validates :body , presence: true
  validates :user_id , presence: true
  validates :micropost_id , presence: true
end
