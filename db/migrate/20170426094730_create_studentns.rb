class CreateStudentns < ActiveRecord::Migration[5.0]
  def change
    create_table :studentns do |t|
      t.string :name
      t.text :course
      t.integer :rollno
      t.integer :seller_id
      t.string :email

      t.timestamps
    end
  end
end
