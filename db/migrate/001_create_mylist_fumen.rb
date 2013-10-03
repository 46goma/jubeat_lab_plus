class CreateMylistFumen < ActiveRecord::Migration
  def self.up
    create_table :mylist_fumen do |t|
      t.integer :fumen_id
      t.string :title
      t.text :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :mylist_fumen
  end
end
