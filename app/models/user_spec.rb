require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create({
      email: "rspec@yahoo.com",
      password: "rspec123",
      address: '1 Bahnhofstasse, Luzern',
      name: "R Spec",
      phone: "0739481202"
    })
  end

  describe "creation" do
    it "should have created a user" do
      expect(User.all.count).to eq(1)
    end
  end

  describe "validations" do
    it "should not let a user be created without an email address" do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it "should not let a user be created without a password" do
      @user.password = nil
      expect(@user).to_not be_valid
    end
  end

end
