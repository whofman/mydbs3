class CreateRegdbs < ActiveRecord::Migration
  def self.up
    create_table :regdbs do |t|
      t.string :product
      t.string :expires
      t.string :url
      t.string :login
      t.string :passwd
      t.text :notes
    end
  end

  def self.down
    drop_table :regdbs
  end
end
