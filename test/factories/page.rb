FactoryGirl.define do
  factory :page do
    name { Faker::Lorem.words(3).join(' ') }
    body { Faker::Lorem.paragraphs(1).join(' ') }
  end
end
