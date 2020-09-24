class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.datetime :startDate
      t.datetime :endDate
      t.string :location
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
