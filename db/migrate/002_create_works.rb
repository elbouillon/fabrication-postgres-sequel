Sequel.migration do
  change do

    create_table :works do
      primary_key :id
      String :name
    end

  end
end
