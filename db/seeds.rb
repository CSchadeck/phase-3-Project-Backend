puts "🌱 Seeding spices..."

Student.destroy_all
Subject.destroy_all

#student table
Student.create(student_name: "Elenore Rigby", id:1)
Student.create(student_name: "Richard Hammel", id:2)
Student.create(student_name: "Lucy Sky", id:3)
Student.create(student_name: "Eddie Kite", id:4)
Student.create(student_name: "Bill Fisher", id:5)

#subject table
Subject.create(subject:"History", id:1)
Subject.create(subject:"Chemistry", id:2)
Subject.create(subject:"JavaScript", id:3)
Subject.create(subject:"Ruby", id:4)
Subject.create(subject:"Math", id:5)


#card table
Card.create(front:"Who shot Alexander Hamilton?" , back: "Aaron Burr."  , student_id: 1, subject_id:1)
Card.create(front:"Can water stay liquid bleow zero degrees celsius?" , back: "Yes, water can stay liquid below zero degrees Celsius." , student_id:2, subject_id:2)
Card.create(front:"What is the difference between let and const?", back:"let can be updated and re-declared. const cannot be updated or re-declared." , student_id: 3, subject_id:3)
Card.create(front:"What was the inspiration to the creaction of Ruby?" , back:"To make developers happy."  , student_id: 4, subject_id: 4)
Card.create(front:"What is the square root of 9?", back: "Three."  , student_id: 5, subject_id:5)

puts "✅ Done seeding!"
