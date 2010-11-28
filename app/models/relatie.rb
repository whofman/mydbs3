class Relatie < ActiveRecord::Base
   attr_accessible :naam
   has_many :adresdbs
end
