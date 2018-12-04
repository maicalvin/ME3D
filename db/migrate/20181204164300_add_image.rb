class AddImage < ActiveRecord::Migration[5.2]
    def change
add_column :users, :profilepicture, :string
    end
end