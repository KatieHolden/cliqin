# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  login      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  attr_accessible :login, :password

  before_save { |student| student.login = login.downcase }

  validates :login, presense: true, length: { maximum: 8}, uniqueness: true
  validates :password, presence: true, length: { minimum: 8}

end
