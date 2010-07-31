class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer :number
      t.string :filename
      t.string :title
      t.timestamps
    end
    add_index :pages, :filename
  end

  def self.down
    drop_table :pages
    remove_index :pages, :filename
  end
end
