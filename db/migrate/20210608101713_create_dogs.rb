class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :temperament
      t.string :sex
      t.integer :age
      t.text :description
      t.string :images
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
