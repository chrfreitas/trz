module Types
  class SurvivorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Int, null: false
    field :last_location, String, null: true
    field :gender, String, null: false
  end
end