class CreateArtdbs < ActiveRecord::Migration
  def self.up
    create_table :artdbs do |t|
      t.string :titel
      t.string :soort
      t.string :tijdschrift
      t.string :jaargang
      t.string :url
    end
  end

  def self.down
    drop_table :artdbs
  end
end
