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

require 'test_helper'

class QuestionSetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
