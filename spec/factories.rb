FactoryBot.define do
  factory :preview do
    url { Faker::Internet.url }
    title { Faker::FunnyName }
    ogtype { Faker::Types.rb_string }
    image { Faker::Internet.url + '.jpg' }
    description { Faker::Quote.yoda }
  end

end