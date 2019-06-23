class CreateUserSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :user_searches do |t|

      t.timestamps
    end
  end
end
