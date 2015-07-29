# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ******** Create Teachers ********
teacher1 = Teacher.new(
  first_name: "Bikram",
  last_name: "Virk",
  username: "bvirk",
  teacher_id: 1,
  email: "email1@gmail.com")
teacher1.password = "1234"
teacher1.save()

teacher2 = Teacher.new(
  first_name: "Albert",
  last_name: "Einstein",
  username: "aeinstein",
  teacher_id: 2,
  email: "email2@gmail.com")
teacher2.password = "1234"
teacher2.save

teacher3 = Teacher.new(
  first_name: "Elton",
  last_name: "John",
  username: "ejohn",
  teacher_id: 3,
  email: "email3@gmail.com")
teacher3.password = "1234"
teacher3.save


# ******** Create Students ********
student1 = Student.new(
  first_name: "Johny",
  last_name: "Lever",
  username: "jlever",
  student_id: 1,
  email: "email1@gmail.com")
student1.password = "1234"
student1.save

student2 = Student.new(
  first_name: "Amy",
  last_name: "Schumer",
  username: "aschumer",
  student_id: 2,
  email: "email2@gmail.com")
student2.password = "1234"
student2.save


# # ******** Create Courses ********
course1 = Course.create(
  title: "Ruby Basics",
  description: "Learn Ruby from scratch",
  subject: "Web Development",
  properties_list: "programming,code,web,ruby",
  teacher_id: teacher2.id
  )


course2 = Course.create(
  title: "Sinatra Framework",
  description: "Learn how to work with Sinatra framework",
  subject: "Web Development",
  properties_list: "programming,code,web,framework",
  teacher_id: teacher2.id
  )

course3 = Course.create(
  title: "Databases: SQL",
  description: "Learn Databases through SQL",
  subject: "Web Development",
  properties_list: "programming,code,web,backend",
  teacher_id: teacher2.id
  )

course4 = Course.create(
  title: "Algebra I",
  description: "Learn Algebra",
  subject: "Mathematics",
  properties_list: "math,mathematics,algebra,middleschool",
  teacher_id: teacher1.id
  )

# ******** Create Videos ********
video1 = Video.create(title: "Lesson 1",
    description: "Video 1.0",
    internal_resource_path: "/Lesson1_Video1_0.png")
Coursevideo.create(course_id: course4.id,
    video_id: video1.id,
    video_sequence_id: 1.0 )

video2 = Video.create(title: "Lesson 1",
    description: "Video 2.0",
    internal_resource_path: "/Lesson1_Video2_0.png")
Coursevideo.create(course_id: course4.id,
    video_id: video2.id,
    video_sequence_id: 2.0 )

video3 = Video.create(title: "Lesson 1",
    description: "Video 2.1",
    internal_resource_path: "/Lesson1_Video2_1.png")
Coursevideo.create(course_id: course4.id,
    video_id: video3.id,
    video_sequence_id: 2.1 )

video4 = Video.create(title: "Lesson 1",
    description: "Video 2.2",
    internal_resource_path: "/Lesson1_Video2_2.png")
Coursevideo.create(course_id: course4.id,
    video_id: video4.id,
    video_sequence_id: 2.2 )

video5 = Video.create(title: "Lesson 1",
    description: "Video 3.0",
    internal_resource_path: "/Lesson1_Video3_0.png")
Coursevideo.create(course_id: course4.id,
    video_id: video5.id,
    video_sequence_id: 3.0 )

video6 = Video.create(title: "Lesson 1",
    description: "Video 3.1",
    internal_resource_path: "/Lesson1_Video3_1.png")
Coursevideo.create(course_id: course4.id,
    video_id: video6.id,
    video_sequence_id: 3.1 )

video7 = Video.create(title: "Lesson 1",
    description: "Video 4.0",
    internal_resource_path: "/Lesson1_Video4_0.png")
Coursevideo.create(course_id: course4.id,
    video_id: video7.id,
    video_sequence_id: 4.0 )


# ******** Create Questions(+Answers) ********
question1 = Question.create(
  question: "What is 2+2?",
  answer_list: "1,22,4,10",
  correct_answer: "4",
  video_id: video1.id,
  avg_time: 15,
  test_taker_count: 5)

question2 = Question.create(
  question: "What is 2*2?",
  answer_list: "1,22,4,10",
  correct_answer: "4",
  video_id: video2.id,
  avg_time: 5,
  test_taker_count: 5)

question3 = Question.create(
  question: "What is 10-2?",
  answer_list: "1,8,102,10",
  correct_answer: "8",
  video_id: video3.id,
  avg_time: 15,
  test_taker_count: 5)

question4 = Question.create(
  question: "What is 10*2?",
  answer_list: "1,20,2,10",
  correct_answer: "20",
  video_id: video4.id,
  avg_time: 15,
  test_taker_count: 5)

question5 = Question.create(
  question: "What is 10/2?",
  answer_list: "1,2,4,5",
  correct_answer: "5",
  video_id: video5.id,
  avg_time: 15,
  test_taker_count: 5)

question6 = Question.create(
  question: "What is 5 % 2?",
  answer_list: "1,22,4,10",
  correct_answer: "1",
  video_id: video6.id,
  avg_time: 15,
  test_taker_count: 5)

question7 = Question.create(
  question: "What is 4^2?",
  answer_list: "1,16,8,10",
  correct_answer: "16",
  video_id: video7.id,
  avg_time: 15,
  test_taker_count: 5)
















