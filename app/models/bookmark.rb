class Bookmark < ActiveRecord::Base
  belongs_to :user

  validates :url, :user, presence: true
end
