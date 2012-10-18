class Suggestion < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  attr_accessible :body, :email, :name
end
