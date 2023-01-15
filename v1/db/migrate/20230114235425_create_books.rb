class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :publisher, null: false, foreign_key: true
      t.string :title
      t.string :isbn_10
      t.string :isbn_13
      t.float :price
      t.integer :publication_year
      t.text :image
      t.string :edition

      t.timestamps
    end
  end
end
