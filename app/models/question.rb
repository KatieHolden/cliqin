# == Schema Information
#
# Table name: questions
#
#  id              :integer          not null, primary key
#  text            :string(255)
#  question_set_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  correct_answer  :integer
#

class Question < ActiveRecord::Base
  attr_accessible :question_set_id, :text
  belongs_to :question_set
  has_many :answers

  validates :question_set_id, presence: true
  validates :text, presence: true
end
