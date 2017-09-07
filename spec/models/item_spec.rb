require 'rails_helper'

RSpec.describe Item, type: :model do
  let (:user) { User.create!(username: "Lisa", email: "lisa@email.com", password: "password") }
  let (:list) { List.create!(name: "New List", user: user) }
  let (:item) { Item.create!(name: "New Item", list: list) }

  it { is_expected.to belong_to(:list) }

  describe "attributes" do
    it "has a name attribute" do
      expect(item).to have_attributes(name: "New Item")
    end
  end
end
