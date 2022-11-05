require 'rails_helper'

RSpec.describe Work, type: :model do
  it 'just works...' do
    expec(Fabricate(:work)).to be_valid
  end
end
