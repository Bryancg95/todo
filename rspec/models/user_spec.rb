require 'rails_helper'

RSpec.describe User, :type => :model do
  user{
    describe_class.new(username: "Gary", email:"gary@hotmail.com",
    password: "hola123")
  }
  it "is valid with valid attributes" do
    expect(user).to be_valid
  end
  it "is not valid without a username" do
    user.username = nil
    expect(user).to_not be_valid
  end
  it "is not valid without a email" do
    user.email = nil
    expect(user).to_not be_valid
  end
  it "is not valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end
end
