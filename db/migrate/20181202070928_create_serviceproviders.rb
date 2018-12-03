class CreateServiceproviders < ActiveRecord::Migration[5.2]
  def change
    create_table :serviceproviders do |t|
    t.string :provider_name
    t.string :description
    t.string :location
    t.string :price
    t.string :materials
    t.string :delivery
    t.string :collection
    t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
