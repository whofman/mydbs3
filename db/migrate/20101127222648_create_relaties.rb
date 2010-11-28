class CreateRelaties < ActiveRecord::Migration
  def self.up
    create_table :relaties do |t|
      t.string :naam
    end
  end

  def self.down
    drop_table :relaties
  end
end
