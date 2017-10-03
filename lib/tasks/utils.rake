namespace :utils do
  desc "Create fake users"
  task generate_users: :environment do
    puts "Creating Users"

    10.times do
      User.create!(
        name: Faker::Name.name,
        user_name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "123123",
        password_confirmation: "123123",
        bio: LeroleroGenerator.sentence([1,2,3,4,5].sample),
        location: Faker::Address.city + " - " + Faker::Address.state_abbr
      )
    end
  end

  desc "Create fake tweets"
  task generate_tweets: :environment do
    puts "Creating Tweets"
    20.times do
      Tweet.create!(
        text: LeroleroGenerator.sentence[0,138],
        user_id: User.all.sample.id
      )
    end
  end

end
