class PlaylistRequest < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  attr_accessible :body, :published_date, :title
  has_many :suggestions
end