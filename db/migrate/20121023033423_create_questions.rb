class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :question_set_id

      t.timestamps
    end
  end
end
