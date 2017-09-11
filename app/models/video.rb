class Video < ActiveRecord::Base
  has_many :users_videos, dependent: :destroy
  has_many :users, through: :users_videos
  # How does a video relate to a user?
  # You should be able to run the following:
  #    Video.last.users
end
