class PlaylistRequest < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  attr_accessible :body, :published_date, :title, :suggestions_attributes
  has_many :suggestions
	accepts_nested_attributes_for :suggestions
end
