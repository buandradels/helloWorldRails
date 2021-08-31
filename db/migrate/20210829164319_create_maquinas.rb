class CreateMaquinas < ActiveRecord::Migration[6.1]
  def change
    create_table :maquinas do |t|
      t.string :tipo
      t.string :nome
      t.text :descricao
      t.integer :mesesdegarantia
      t.date :datadecompra
      t.boolean :quebrada

      t.timestamps
    end
  end
end
