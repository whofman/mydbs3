class AddRelatieToAdresdbs < ActiveRecord::Migration
  def self.up
    add_column :adresdbs, :relatie_id, :integer
  end

  def self.down
    remove_column :adresdbs, :relatie_id
  end
end
