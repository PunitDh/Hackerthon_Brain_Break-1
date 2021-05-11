require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with valid attributes" do
    user = User.new
    expect(user).to be_truthy
  end
end