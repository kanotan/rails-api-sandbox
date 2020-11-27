module Types
  class UserType < Types::BaseObject
    field :name, String, null: false
    field :orders, [OrderType], null: false
  end
end
