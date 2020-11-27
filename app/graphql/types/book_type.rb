module Types
  class BookType < Types::BaseObject
    field :name, String, null: false
    field :price, Int, null: false
    field :author, AuthorType, null: false
    field :orders, [OrderType], null: false
  end
end
