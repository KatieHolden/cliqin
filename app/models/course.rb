class Course < ActiveRecord::Base
  attr_accessible :instructor_id, :name
  belongs_to :instructor
  has_many :question_sets
end
