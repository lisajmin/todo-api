class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :list_id, :completed
end
