class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :user_id, index:true
      t.string  :blockchain_code
      t.string  :address, null: true
      t.boolean :display, default: false
      t.text    :note, null: true

      t.timestamps
    end

    add_foreign_key :addresses, :users, column: :user_id , primary_key: :id
    add_foreign_key :addresses, :block_chains, column: :blockchain_code , primary_key: :code

  end
end
