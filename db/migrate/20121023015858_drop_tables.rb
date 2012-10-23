class DropTables < ActiveRecord::Migration
  def up
  	drop_table :students
  	drop_table :instuctors
  	drop_table :courses
  	drop_table :in_course
  	drop_table :question_sets
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
