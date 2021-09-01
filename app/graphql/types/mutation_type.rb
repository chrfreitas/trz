module Types
  class MutationType < Types::BaseObject
    field :create_survivor, Types::SurvivorType, "Create a new survivor", null: false do
      argument :name, String, required: true
      argument :age, Int, required: true
      argument :last_location, String, required: false
      argument :gender, String, required: true
    end
  
    def create_survivor(params)
      survivor = Survivor.new(params)
      
      if survivor.save 
        survivor
      else 
        GraphQL::ExecutionError.new "It was not possible to save the survivor!"
      end
    end
  end
end