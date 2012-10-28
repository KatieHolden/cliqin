# == Schema Information
#
# Table name: question_sets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class QuestionSet < ActiveRecord::Base
  attr_accessible :course_id, :name
  belongs_to :course
  has_many :questions

  validates :course_id, presense: true
  validates :name, presense: true 
end
