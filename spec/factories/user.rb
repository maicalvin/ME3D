FactoryGirl.define do
    factory :User do
      first_name     { "mai" }
      email         { "maicalvin@yahoo.com" }
      last_name  { "calvin" }
      gender       { "male" }
      birthday       { "1195-12-16" }
      password       { "123456" }

    end
  end