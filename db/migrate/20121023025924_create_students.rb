class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
