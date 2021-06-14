class CreateUserAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_addresses do |t|
      t.references :address
      t.references :user

      t.timestamps
    end
  end
end
