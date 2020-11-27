module Types
  class AuthorType < Types::BaseObject
    field :name, String, null: false
    field :books, [BookType], null: false
  end
end
