class CreateAdresdbs < ActiveRecord::Migration
  def self.up
    create_table :adresdbs do |t|
      t.string :Naam
      t.string :Voornaam
      t.string :Adres
      t.string :Woonplaats
      t.string :Telefoon
      t.string :Email
      t.string :Website
      t.string :Verjaardag
      t.string :Notities
    end
  end

  def self.down
    drop_table :adresdbs
  end
end
