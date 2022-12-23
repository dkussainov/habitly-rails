class HabitSerializer < ActiveModel::Serializer
  attributes :id, :logo, :name, :repeat, :goal, :time_of_day, :start_date
 
end
