class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'HTML/CSS' },
    { id: 3, name: 'Ruby' },
    { id: 4, name: 'JavaScript' },
    { id: 5, name: 'PHP' },
    { id: 6, name: 'Python' },
    { id: 7, name: 'Java' },
    { id: 8, name: 'C++' },
    { id: 9, name: 'C#' },
    { id: 10, name: 'C言語' },
    { id: 11, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :shares
end
