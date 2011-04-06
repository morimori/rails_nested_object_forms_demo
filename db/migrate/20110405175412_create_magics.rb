class CreateMagics < ActiveRecord::Migration
  def self.up
    create_table :magics do |t|
      t.string :name, :null => false
      t.timestamps
    end
    add_index :magics, :name, :unique => true
  end

  def self.down
    drop_table :magics
  end
end
