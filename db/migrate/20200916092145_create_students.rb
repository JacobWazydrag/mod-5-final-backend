class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :profile_picture
      t.text :bio
      t.string :phone_number
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
