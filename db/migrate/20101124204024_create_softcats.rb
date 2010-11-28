class CreateSoftcats < ActiveRecord::Migration
  def self.up
    create_table :softcats do |t|
      t.string :naam
    end
  end

  def self.down
    drop_table :softcats
  end
end
