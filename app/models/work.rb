class Work < Sequel::Model
  one_to_many :tasks
end
