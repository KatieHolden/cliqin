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

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
