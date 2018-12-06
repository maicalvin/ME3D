class Serviceprovider < ApplicationRecord
    belongs_to :user
    def self.search_providers(query)
        where("provider_name ILIKE :provider_name", provider_name: "%#{query}%")
    end
end

