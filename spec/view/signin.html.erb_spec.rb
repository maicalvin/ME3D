require 'rails_helper'

RSpec.feature "signin", type: :feature do
    context "User Sign In" do 
        scenario 'should be successful' do
            visit sign_in_path
            expect(page).to have_text("Sign In")
            fill_in 'email', :with=>'maicalvin@yahoo.com'
            fill_in 'password', with: '123456'
            click_button('Sign In')
        end
    end
    context "User Sign Up" do 
        scenario 'should be successful' do
            visit root_url
            expect(page).to have_content("Home Sign Up Sign In MAKE ME3D Find your reliable 3D printing service provider in nearby. ")
            fill_in 'First Name', :with=>'mai'
            fill_in 'Last Name', :with=>'calvin'
            fill_in 'Email', :with=>'mai@yahoo.com'
            fill_in 'password', :with=>'123456'
            fill_in 'yyyy-mm-dd', with: '1995-12-11'
            click_button('SIGN UP')
        end
    end
end

