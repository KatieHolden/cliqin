# == Schema Information
#
# Table name: instructors
#
#  id         :integer          not null, primary key
#  login      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instructor < ActiveRecord::Base
  attr_accessible :login, :password
  has_many :courses

  before_save { |instructor| instuctor.login = login.downcase }

  validates :login, presense: true, length: { maximum: 8}, uniqueness: true
  validates :password, presence: true, length: { minimum: 8}
end
