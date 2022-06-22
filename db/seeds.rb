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
    #history
Card.create(front:"Who shot Alexander Hamilton?" , back: "Aaron Burr."  , student_id: 1, subject_id:1)
Card.create(front:"What city was the first capital of the United States?" , back: "New York City."  , student_id: 1, subject_id:1)
Card.create(front:"When did the American Civil War end?" , back: "May 9, 1865."  , student_id: 2, subject_id:1)
Card.create(front:"Who invented the first car?" , back: "Karl Benz invented his first automobile in Germany, circa 1885.", student_id: 3, subject_id:1)
Card.create(front:"Who was the first American to win a Noble Peace Prize?" , back: "Theodore Roosevelt in 1906."  , student_id: 4, subject_id:1)
    #Chemistry
Card.create(front:"Can water stay liquid bleow zero degrees celsius?" , back: "Yes.The freezing point of water drops below zero degrees Celsius as you apply pressure." , student_id:2, subject_id:2)
Card.create(front:"The modern atomic mass unit is based on ____" , back: "Carbon-12." , student_id:3, subject_id:2)
Card.create(front:"What is the velocity of light in m/s?" , back: "3 x 108 m/s." , student_id:4, subject_id:2)
Card.create(front:"Which element has no neutrons in it?" , back: "Hydrogen" , student_id:5, subject_id:1)
Card.create(front:"What are isotopes?" , back: "Atoms having the same atomic number but a different mass number" , student_id:2, subject_id:2)
Card.create(front:"What is Isotone?" , back: "Atoms having an equal number of neutrons." , student_id:2, subject_id:2)
    #Javascript
Card.create(front:"What is the difference between let and const?", back:"let can be updated and re-declared. const cannot be updated or re-declared." , student_id: 3, subject_id:3)
Card.create(front:"What is the use of isNaN function?", back:"isNan function returns true if the argument is not a number; otherwise, it is false." , student_id: 4, subject_id:3)
Card.create(front:"Which company developed JavaScript?", back:"Netscape is the software company that developed JavaScript." , student_id: 5, subject_id:3)
Card.create(front:"What is the difference between ViewState and SessionState?", back:"ViewState is specific to a page in a session. SessionState is specific to user-specific data that can be accessed across all web application pages." , student_id: 5, subject_id:3)
Card.create(front:"What are all the looping structures in JavaScript?", back:"For, While, Do-while loops." , student_id: 3, subject_id:3)
    #Ruby
Card.create(front:"What was the inspiration to the creaction of Ruby?" , back:"To make developers happy."  , student_id: 4, subject_id: 4)
Card.create(front:"Assign the variable x to the value 5" , back:"x = 5"  , student_id: 3, subject_id: 4)
Card.create(front:"a = Bat b = woman. What does this expression evaluate to? a + b", back:"Batwoman"  , student_id: 2, subject_id: 4)
Card.create(front:"Because Ruby is an interpreted language, it means that the source code is compiled and executed at ____. ", back:"Runtime"  , student_id: 1, subject_id: 4)
Card.create(front:"Explain how you can list all routes for an application?", back:"To list out all routes for an application you can write rake routes in the terminal.", student_id: 5, subject_id: 4)
    #Math
Card.create(front:"What is the square root of 9?", back: "Three.", student_id: 5, subject_id:5)
Card.create(front:"What is the 12th term of the sequence -2,-4,-6,...........-100?", back: "-24.", student_id: 4, subject_id:5)
Card.create(front:"n(A – B) + n(A ∩ B ) =", back: "n(A)"  , student_id: 3, subject_id:5)
Card.create(front:"Add 8.563 and 4.8292.", back: "13.3922"  , student_id: 2, subject_id:5)
Card.create(front:"Using only an addition, how do you add eight 8’s and get the number 1000?", back: "888 + 88 + 8 + 8 + 8 = 1000"  , student_id: 1, subject_id:5)

puts "✅ Done seeding!"
