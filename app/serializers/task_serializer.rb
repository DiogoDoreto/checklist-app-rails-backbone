class TaskSerializer < ActiveModel::Serializer
  attributes :id, :done, :description
end
