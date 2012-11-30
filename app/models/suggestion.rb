class Suggestion < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
	belongs_to :playlistrequest
  attr_accessible :body, :email, :name, :title
end
