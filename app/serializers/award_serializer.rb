class AwardSerializer < ActiveModel::Serializer
  attributes :id, :type, :name
  has_one :persona
end
