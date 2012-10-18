class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password
  has_many :PlaylistRequests
end
