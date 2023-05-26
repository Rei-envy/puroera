FactoryBot.define do
    factory :user do
      nickname              {'test'}
      email                 {'test@example'}
      password              {'test000'}
      password_confirmation {password}
    end
    after(:build) do |item|
        item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
end