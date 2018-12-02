class User < ApplicationRecord
    validates :email, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
    has_secure_password
  
end
