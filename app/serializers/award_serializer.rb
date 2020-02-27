class AwardSerializer < ActiveModel::Serializer
  attributes :id, :level, :name
  belongs_to :user
end
