class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :cep
      t.string :uf
      t.string :cidade
      t.string :bairro
      t.string :logradouro

      t.timestamps
    end
  end
end
