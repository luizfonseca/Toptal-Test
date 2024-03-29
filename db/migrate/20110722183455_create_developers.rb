class CreateDevelopers < ActiveRecord::Migration
  def self.up
    create_table :developers do |t|
      t.string :name
      t.date :age
      t.string :email
      t.text :observation

      t.timestamps
    end
  end

  def self.down
    drop_table :developers
  end
end
