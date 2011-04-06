class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :title, :null => false
      t.timestamps
    end
    add_index :jobs, :title, :unique => true
  end

  def self.down
    drop_table :jobs
  end
end
