class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :Bank
      t.string :Bijgewerkt
      t.string :Saldo
    end
  end

  def self.down
    drop_table :accounts
  end
end
