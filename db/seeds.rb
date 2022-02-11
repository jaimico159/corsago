user = User.create(email: 'jaime@gmail.com', password: 'testing', password_confirmation: 'testing')

20.times do
  User.create(email: Faker::Internet.email, password: 'testing', password_confirmation: 'testing')
end

30.times do
  Course.create!([{
                   title: Faker::Educator.course_name,
                   description: Faker::TvShows::GameOfThrones.quote,
                   user_id: User.first.id,
                   short_description: Faker::Quote.famous_last_words,
                   language: Faker::ProgrammingLanguage.name,
                   level: 'Beginner',
                   price: Faker::Number.between(from: 1000, to: 20_000)
                 }])
end
