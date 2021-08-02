module Types
  class MutationType < Types::BaseObject
    field :create_survivor, Types::SurvivorType, "Create a new survivor", null: false do
      argument :name, String, required: true
      argument :age, Int, required: true
      argument :last_location, String, required: false
      argument :gender, String, required: true
    end
  
    def create_survivor(params)
      puts params
    end
  end
end

# Follow this structure to create a mutation
# https://graphql-ruby.org/mutations/mutation_classes