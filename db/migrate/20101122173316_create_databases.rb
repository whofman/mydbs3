class CreateDatabases < ActiveRecord::Migration
  def self.up
    create_table :databases do |t|
      t.string  :naam
      t.string  :beschrijving
      t.string  :driver
      t.integer :tabel
    end
  end

  def self.down
    drop_table :databases
  end
end
