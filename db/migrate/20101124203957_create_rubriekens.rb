class CreateRubriekens < ActiveRecord::Migration
  def self.up
    create_table :rubriekens do |t|
      t.string :naam
    end
  end

  def self.down
    drop_table :rubriekens
  end
end
