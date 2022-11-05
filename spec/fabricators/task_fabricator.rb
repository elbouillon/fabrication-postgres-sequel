Fabricator(:task) do
  name "MyString"
  manager(fabricator: :user)
end
