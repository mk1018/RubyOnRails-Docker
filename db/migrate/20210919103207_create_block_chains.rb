class CreateBlockChains < ActiveRecord::Migration[6.1]
  def change
    create_table :block_chains, id: false do |t|
      t.string :code, null: false, primary_key: true
      t.string :name
      t.string :symbol
      t.string :image

      t.timestamps
    end
  end
end
