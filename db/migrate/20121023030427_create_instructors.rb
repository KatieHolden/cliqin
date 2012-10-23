class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
