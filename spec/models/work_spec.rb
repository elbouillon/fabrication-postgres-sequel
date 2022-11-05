require 'rails_helper'

RSpec.describe Work, type: :model do
  it 'creating user works' do
    expect(Fabricate(:user).class).to be(User) 
  end

  it 'creating task works' do
    expect(Fabricate(:task).class).to be(Task) 
  end

  it 'creating work that as tasks that have users does not work' do
    expect(Fabricate(:work).class).to be(Work)
  end
end
