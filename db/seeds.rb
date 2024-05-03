# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

student = Student.create(
  name: 'test',
  email: 'test@test.com',
  lastname: 'testlast'
)

20.times do |i|
  Student.create(
    name: "test-#{i+1}",
    email: "test-#{i+1}@test.com",
    lastname: "testlast-#{i+1}"
  )
end

Student.all.each do |student|
  student.blogs.create(
    title: "Blog for student-#{student.id}",
    content: "Content",
    )
  student.blogs.create(
    title: "Blog for student-#{student.id}",
    content: "Content",
    )
end


Course.create(name: 'Ruby on Rails', description:'Pending')
Course.create(name: 'React js', description:'Pending')
Course.create(name: 'Angular', description:'Pending')
Course.create(name: 'NodeJs', description:'Pending')