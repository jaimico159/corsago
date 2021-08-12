user = User.create(email: 'jaime@gmail.com', password: 'testing', password_confirmation: 'testing')

30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user: user
  }])
end