module Types::Objects
  class BaseObject < GraphQL::Schema::Object
    field_class Types::BaseField
  end
end
