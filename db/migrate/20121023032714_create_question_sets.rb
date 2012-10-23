class CreateQuestionSets < ActiveRecord::Migration
  def change
    create_table :question_sets do |t|
      t.string :name
      t.integer :course_id

      t.timestamps
    end
  end
end
