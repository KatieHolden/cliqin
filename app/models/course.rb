# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Course < ActiveRecord::Base
  attr_accessible :instructor_id, :name
  belongs_to :instructor
  has_many :question_sets

  before_save { |course| course.name = name.downcase }

  validates :name, presence: true, length:  { maximum: 10 }, uniqueness: true
  validates :instructor_id, presence: true
end
