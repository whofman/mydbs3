class CreateDoccats < ActiveRecord::Migration
  def self.up
    create_table :doccats do |t|
      t.string :naam
    end
  end

  def self.down
    drop_table :doccats
  end
end
