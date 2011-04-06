class CreateJobMagics < ActiveRecord::Migration
  def self.up
    create_table :job_magics do |t|
      t.integer :job_id,   :null => false
      t.integer :magic_id, :null => false
      t.timestamps
    end
    add_index :job_magics, [:job_id, :magic_id], :unique => true
  end

  def self.down
    drop_table :job_magics
  end
end
