class CreateSoftdbs < ActiveRecord::Migration
  def self.up
    create_table :softdbs do |t|
      t.string :fname
      t.string :fsize
      t.string :fdate
      t.string :fvol
      t.string :fhide
      t.string :fcat
      t.string :fdesc
    end
  end

  def self.down
    drop_table :softdbs
  end
end
