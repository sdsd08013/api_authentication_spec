require 'rails_helper'
require 'user'

describe User do
  context "authenticating a user" do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end
  end
end
