require 'rails_helper'

RSpec.describe User, type: :model do


  context "creates: " do
    it "User required to enter their email and password to create a new account" do
    expect{ User.create(email: email,password:password) }
    end
    it "returns error either email or password is empty" do
			expect{User.create(email: nil ,password: nil)}
		end
  end
  context "validation: " do
    describe"Validates the presence of email and password and uniqueness of email" do
		  it { is_expected.to validate_presence_of(:email) }
      it {is_expected.to validate_presence_of(:password_digest) }
    end
  
  end
   
  
end