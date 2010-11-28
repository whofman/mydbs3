class CreateTxes < ActiveRecord::Migration
  def self.up
    create_table :txes do |t|
      t.string :Datun
      t.string :Rekening
      t.string :Naam
      t.string :TegenRek
      t.string :TX
      t.string :Bedrag
      t.string :Code
      t.string :Soort
      t.string :Mededeling
    end
  end

  def self.down
    drop_table :txes
  end
end
