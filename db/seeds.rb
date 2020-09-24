# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lesson.destroy_all


1.times do 
  some_date = Time.new(2020, 9, 27, 9, 35)
  some_other_date = Time.new(2020, 9, 27, 11, 30)
  Lesson.create(
    title: 'Lesson with Drock', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 2,
    student_id: 1
  ) 
end
1.times do 
  some_date = Time.new(2020, 9, 25, 9, 35)
  some_other_date = Time.new(2020, 9, 25, 11, 30)
  Lesson.create(
    title: 'Lesson with Drock', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 2,
    student_id: 1
  ) 
end
1.times do 
  some_date = Time.new(2020, 9, 20, 9, 35)
  some_other_date = Time.new(2020, 9, 20, 11, 30)
  Lesson.create(
    title: 'Lesson with Drock', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 2,
    student_id: 4
  ) 
end
1.times do 
  some_date = Time.new(2020, 9, 25, 9, 35)
  some_other_date = Time.new(2020, 9, 25, 11, 30)
  Lesson.create(
    title: 'Lesson with GiGi', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 3,
    student_id: 1
  ) 
end
1.times do 
  some_date = Time.new(2020, 9, 21, 9, 35)
  some_other_date = Time.new(2020, 9, 21, 11, 30)
  Lesson.create(
    title: 'Lesson with GiGi', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 3,
    student_id: 2
  ) 
end
1.times do 
  some_date = Time.new(2020, 9, 22, 9, 35)
  some_other_date = Time.new(2020, 9, 22, 11, 30)
  Lesson.create(
    title: 'Lessons with Nicky', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 1,
    student_id: 3
  ) 
end
1.times do 
  some_date = Time.new(2020, 9, 22, 9, 35)
  some_other_date = Time.new(2020, 9, 22, 11, 30)
  Lesson.create(
    title: 'Lessons with Nicky', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 1,
    student_id: 2
  ) 
end
1.times do 
  some_date = Time.new(2020, 9, 22, 9, 35)
  some_other_date = Time.new(2020, 9, 22, 11, 30)
  Lesson.create(
    title: 'Lesson with Johnny', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 4,
    student_id: 2
  ) 
end
1.times do 
  some_date = Time.new(2020, 9, 22, 9, 35)
  some_other_date = Time.new(2020, 9, 22, 11, 30)
  Lesson.create(
    title: 'Lesson with Johnny', 
    startDate: some_date, 
    endDate: some_other_date,
    location: "Artspace Chicago",
    artist_id: 4,
    student_id: 1
  ) 
end
