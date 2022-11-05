class Task < Sequel::Model(:tasks)
  many_to_one :work
  many_to_one :assignable_user, key: :assignable_user_id, class: :User
  many_to_one :manager, key: :creator_id, class: :User
end
