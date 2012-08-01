class CreateSimpleComments < ActiveRecord::Migration
  def self.up
    create_table :simple_comments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.timestamps
    end
  end

  def self.down
    drop_table :simple_comments
  end
end
