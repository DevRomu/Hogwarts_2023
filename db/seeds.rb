# Runs this script using: rails db:seed

Student.destroy_all # Delete all rows from the students table
House.destroy_all # Delete all rows from the houses table



NUMBER_OF_HOUSES = 5 # Number of houses to create

NUMBER_OF_HOUSES.times do
  house_name = Faker::Movies::HarryPotter.unique.house
  house_points = rand(333..9999)
  house = House.create(name: house_name, points: house_points)


  number_of_students = rand(10..15)
  number_of_students.times do
    #The created student's house_id (FK) will be assigned the house's PK
    house.students.create(name: Faker::Movies::HarryPotter.unique.character)
end
end

puts "Created #{House.count} houses."
puts "Created #{Student.count} students."
