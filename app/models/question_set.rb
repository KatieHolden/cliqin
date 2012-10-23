class QuestionSet < ActiveRecord::Base
  attr_accessible :course_id, :name
  belongs_to :course
  has_many :questions
end
