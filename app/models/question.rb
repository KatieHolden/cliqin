class Question < ActiveRecord::Base
  attr_accessible :question_set_id, :text
  belongs_to :question_set
  has_many :answers
end
