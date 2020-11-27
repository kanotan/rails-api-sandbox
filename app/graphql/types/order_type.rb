module Types
  class OrderType < Types::BaseObject
    field :book, BookType, null: false
    field :user, UserType, null: false
  end
end
