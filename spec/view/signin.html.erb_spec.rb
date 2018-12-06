require 'rails_helper'

RSpec.feature "signin", type: :feature do
    context "Display the email and password login form" do 
        scenario 'should be successful' do
                fill_in 'user_email', :with=>'maicalvin@yahoo.com'
            within('password_field') do
                fill_in 'password', with: '1234567'
            end
        click_button('submit')
        expect(page).to have_content('Welcome to ME3D')
        end
    end
end