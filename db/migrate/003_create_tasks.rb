Sequel.migration do
  change do

    create_table :tasks do
      primary_key :id
      String :name
      foreign_key :creator_id, :users
      foreign_key :assignable_user_id, :users
      foreign_key :work_id, :works
    end

  end
end
