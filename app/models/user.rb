class User < Sequel::Model
  one_to_many :created_task, key: :creator_id, class: Task
end
