class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :date, :player_class, :credits
end
