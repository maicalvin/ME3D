class User < ApplicationRecord
  validates :email, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  has_secure_password
    has_many :authentications, dependent: :destroy
    has_many :serviceproviders, dependent:  :destroy

    def self.create_with_auth_and_hash(authentication, auth_hash)
      user = self.create!(
        name: auth_hash["info"]["name"],
        email: auth_hash["info"]["email"],
        password: SecureRandom.hex(10)
      )
      user.authentications << authentication
      return user
    end
    def google_token
      x = self.authentications.find_by(provider: 'google_oauth2')
      return x.token unless x.nil?
    end
  
end
