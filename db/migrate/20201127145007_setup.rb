class Setup < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :books do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.references :author, foreign_key: true, null: false
      t.timestamps
    end

    create_table :users do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :orders do |t|
      t.references :book, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
