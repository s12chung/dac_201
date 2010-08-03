class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer :number
      t.string :filename
      t.string :title
      t.timestamps
    end
    add_index :pages, :filename
    add_index :pages, :number

    Page.delete_all
    Page.create_with_title "Introduction", "intro"
    Page.create_with_title "Font"
    Page.create_with_title "Size and weight", "size_weight"
    Page.create_with_title "Space"
    Page.create_with_title "Hierarchy"
    Page.create_with_title "Summary"
    Page.create_with_title "Conclusion"
    Page.create_with_title "References"
    Page.create :title => "About", :filename => "about"
  end

  def self.down
    drop_table :pages
  end
end
