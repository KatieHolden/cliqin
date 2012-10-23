class DropOtherTables < ActiveRecord::Migration
  def up
  	drop_table :students
  	drop_table :instructors
  	drop_table :courses
  	drop_table :in_courses
  	drop_table :question_sets
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
