class CreateTijdschriftens < ActiveRecord::Migration
  def self.up
    create_table :tijdschriftens do |t|
      t.string :naam
    end
  end

  def self.down
    drop_table :tijdschriftens
  end
end
