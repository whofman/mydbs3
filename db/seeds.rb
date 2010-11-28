# Create collections for Tijdschriften and Types
# be sure to generate a model for each, remove the time stamps and run rake db:migrate

require 'open-uri'

["CT", "CompTotaal", "PCMagazine", "PCM", "Chip", "PC Active", "iCreate", "MacFan", "Blaise", "Draad/2"].each do |mag|
   Tijdschriften.find_or_create_by_naam(mag)
end

["Software","Hardware","Aktueel","Info","Praktijk","Test","Tips"].each do |rubriek|
   Rubrieken.find_or_create_by_naam(rubriek)
end

["","Prive","Zakelijk","Medisch","Uitgaan"].each do |rel|
   Relaties.find_or_create_by_naam(rel)
end

["INFO","SYSUTL","COMM","TXTUTL","MISC","BACKUP","WWW", "DRIVER","PATCH","VTOC"].each do |scat|
   Softcat.find_or_create_by_naam(scat)
end
   
["", "INFO","KLACHT", "MEDICIJN", "SCRIPT"].each do |dcat|
   Doccat.find_or_create_by_naam(dcat)
end  
