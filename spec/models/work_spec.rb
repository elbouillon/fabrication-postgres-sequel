require 'rails_helper'

RSpec.describe Work, type: :model do
  it 'creating user work' do
    expect(Fabricate(:user).class).to be(User) 
  end

  it 'creating task work' do
    expect(Fabricate(:task).class).to be(Task) 
  end

  it 'creating work that as tasks that have users dont work' do
    expect(Fabricate(:work)).to be_valid
  end
end
