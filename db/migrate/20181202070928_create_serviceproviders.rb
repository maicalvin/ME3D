class CreateServiceproviders < ActiveRecord::Migration[5.2]
  def change
    create_table :serviceproviders do |t|

      t.timestamps
    end
  end
end
