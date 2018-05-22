class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.text :description
      t.integer :char0
      t.integer :char1
      t.integer :char2
      t.integer :char3
      t.integer :char4
      t.integer :char5

      t.timestamps
    end
  end
end
