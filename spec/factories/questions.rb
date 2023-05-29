FactoryBot.define do
  factory :question do
    title                 { 'title' }
    category_id           { 2 }
    hypothesis            { 'こう考える' }
    action                { 'こう行動した' }
    thought               { '感想' }
  end
end