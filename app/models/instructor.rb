class Instructor < ActiveRecord::Base
  attr_accessible :login, :password
  has_many :courses
end
