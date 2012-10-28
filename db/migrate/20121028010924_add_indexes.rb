class AddIndexes < ActiveRecord::Migration
  def change
    add_index :students, :login, :unique => true
    add_index :instructors, :login, :unique => true
    add_index :courses, :name, :unique => true
  end
end
