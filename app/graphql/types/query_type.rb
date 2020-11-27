module Types
  class QueryType < Types::BaseObject
    field :authors, [AuthorType], null: false
    field :author, AuthorType, null: true do
      argument :id, ID, required: true
    end

    field :books, [BookType], null: false
    field :book, BookType, null: true do
      argument :id, ID, required: true
    end

    field :orders, [OrderType], null: false
    field :order, OrderType, null: true do
      argument :id, ID, required: true
    end

    field :users, [UserType], null: false
    field :user, UserType, null: true do
      argument :id, ID, required: true
    end

    def authors
      Author.all
    end

    def author(id:)
      Author.find(id)
    end

    def books
      Book.all
    end

    def book(id:)
      Book.find(id)
    end

    def orders
      Order.all
    end

    def order(id:)
      Order.find(id)
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end
  end
end
