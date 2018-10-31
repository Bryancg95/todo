require 'rails_helper'

RSpec.describe TodoList, :type => :model do
  list{
    describe_class.new(title:"Lista 1", description:"Esta lista es de prueba",user_id: 1)
  }
  it "is valid with valid attributes" do
    expect(list).to be_valid
  end
  it "is not valid without a title" do
    list.title = nil
    expect(list).to_not be_valid
  end
  it "is not valid without a description" do
    list.description = nil
    expect(user).to_not be_valid
  end
  describe "Associations" do
  it "has one buyer" do
    assc = described_class.reflect_on_association(:user_id)
    expect(assc.macro).to eq :has_one
  end
end

end
