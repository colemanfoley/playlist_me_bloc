class Suggestion < ActiveRecord::Base
  belongs_to :user
	belongs_to :playlist_request
  attr_accessible :body, :playlist_request_id
end
