Sequel.migration do
  change do
    create_table(:schema_info) do
      column :version, "integer", :default=>0, :null=>false
    end
    
    create_table(:users) do
      primary_key :id
      column :email, "text"
    end
    
    create_table(:works) do
      primary_key :id
      column :name, "text"
    end
    
    create_table(:tasks) do
      primary_key :id
      column :name, "text"
      foreign_key :creator_id, :users, :key=>[:id]
      foreign_key :assignable_user_id, :users, :key=>[:id]
      foreign_key :work_id, :works, :key=>[:id]
    end
  end
end
Sequel.migration do
  change do
    self << "SET search_path TO \"$user\", public"
    self << "INSERT INTO \"schema_info\" (\"version\") VALUES (3)"
  end
end
