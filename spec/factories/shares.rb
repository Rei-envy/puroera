FactoryBot.define do
  factory :share do
    title                 { 'title' }
    category_id           { 2 }
    guess                 { 'こう考える' }
    solution              { 'こう解決した' }
    thought               { '感想' }
  end
end
