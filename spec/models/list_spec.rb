require 'rails_helper'

RSpec.describe List, type: :model do
  let (:user) { User.create!(username: "Lisa", email: "lisa@email.com", password: "password") }
  let (:list) { List.create!(name: "New List", user: user) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:items) }

  describe "attributes" do
    it "has a name attribute" do
      expect(list).to have_attributes(name: "New List")
    end
  end
end
