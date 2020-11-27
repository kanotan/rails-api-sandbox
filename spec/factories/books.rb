# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint           not null
#
# Indexes
#
#  index_books_on_author_id  (author_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#
FactoryBot.define do
  factory :book do
    name { Faker::Name.name }
    price { Faker::Number.number(digits: 4) }
    author
  end
end
