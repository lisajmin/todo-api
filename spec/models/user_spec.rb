require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) { User.create!(username: "Lisa", email: "lisa@email.com", password: "password") }

  it { is_expected.to have_many(:lists) }
  it { is_expected.to have_many(:items) }

  describe "attributes" do
    it "has username, email, and password" do
      expect(user).to have_attributes(username:"Lisa", email:"lisa@email.com", password: "password")
    end
  end
end
