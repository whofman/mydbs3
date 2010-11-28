class Adresdb < ActiveRecord::Base
  attr_accessible :relatie_id
  belongs_to :relatie
end
