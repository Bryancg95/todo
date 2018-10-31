require 'rails_helper'

RSpec.describe TodoList, :type => :model do
  item{
    describe_class.new(content:"tarea 1", string:"comprar ropa",todo_list_id: 1)
  }
  it "is valid with valid attributes" do
    expect(list).to be_valid
  end
  it "is not valid without a content" do
    item.content = nil
    expect(list).to_not be_valid
  end
  it "is not valid without a string" do
    item.content = nil
    expect(user).to_not be_valid
  end

  describe "Associations" do
  it "has one buyer" do
    assc = described_class.reflect_on_association(:todo_list_id)
    expect(assc.macro).to eq :has_one
  end
end

end
