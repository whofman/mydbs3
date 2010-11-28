# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101127223554) do

  create_table "accounts", :force => true do |t|
    t.text "Bank"
    t.text "Bijgewerkt"
    t.text "Saldo"
  end

  create_table "adresdbs", :force => true do |t|
    t.text    "Naam"
    t.text    "Voornaam"
    t.text    "Adres"
    t.text    "Postcode"
    t.text    "Woonplaats"
    t.text    "Telefoon"
    t.text    "Email"
    t.text    "Website"
    t.text    "Verjaardag"
    t.text    "Notities"
    t.integer "relatie_id"
  end

  add_index "adresdbs", ["Naam"], :name => "ix_Naam"
  add_index "adresdbs", ["Type"], :name => "ix_Type"
  add_index "adresdbs", ["Woonplaats"], :name => "ix_Woonplaats"

  create_table "artdbs", :force => true do |t|
    t.string "titel",       :limit => 128
    t.string "soort",       :limit => 15
    t.string "tijdschrift", :limit => 20
    t.string "jaargang",    :limit => 7
    t.string "url",         :limit => 128
  end

  create_table "caldbs", :force => true do |t|
    t.string  "edate",   :limit => 10
    t.string  "btime",   :limit => 5
    t.string  "etime",   :limit => 5
    t.string  "atime",   :limit => 5
    t.integer "removed"
    t.string  "hash",    :limit => 32
    t.string  "note"
  end

  add_index "caldbs", ["edate"], :name => "idx_edate"
  add_index "caldbs", ["hash"], :name => "idx_hash"

  create_table "databases", :force => true do |t|
    t.string  "naam",         :limit => nil
    t.string  "beschrijving", :limit => nil
    t.string  "driver",       :limit => nil
    t.integer "tabel"
  end

  create_table "docdbs", :force => true do |t|
    t.string  "fname", :limit => 128
    t.integer "fsize"
    t.string  "fdate", :limit => 12
    t.string  "fvol",  :limit => 20
    t.integer "fhide"
    t.string  "fcat",  :limit => 8
    t.string  "fdesc"
  end

  add_index "docdbs", ["fcat"], :name => "idz_fcat"
  add_index "docdbs", ["fname"], :name => "idz_fname"
  add_index "docdbs", ["fvol"], :name => "idz_fvol"

  create_table "regdbs", :force => true do |t|
    t.string "product"
    t.string "expires"
    t.string "url"
    t.string "login"
    t.string "passwd"
    t.text   "notes"
  end

  create_table "relaties", :force => true do |t|
    t.string "naam"
  end

  create_table "softdbs", :force => true do |t|
    t.string  "fname", :limit => 128
    t.integer "fsize"
    t.string  "fdate", :limit => 12
    t.string  "fvol",  :limit => 20
    t.integer "fhide"
    t.string  "fcat",  :limit => 8
    t.string  "fdesc"
  end

  add_index "softdbs", ["fcat"], :name => "idx_fcat"
  add_index "softdbs", ["fname"], :name => "idx_fname"
  add_index "softdbs", ["fvol"], :name => "idx_fvol"

  create_table "txes", :force => true do |t|
    t.text "Datum"
    t.text "Rekening"
    t.text "Naam"
    t.text "TegenRek"
    t.text "TX"
    t.text "Bedrag"
    t.text "Code"
    t.text "Soort"
    t.text "Mededeling"
  end

  add_index "txes", ["Code"], :name => "ix_code"
  add_index "txes", ["Rekening"], :name => "ix_rekening"
  add_index "txes", ["Soort"], :name => "ix_soort"
  add_index "txes", ["TX"], :name => "ix_trans"
  add_index "txes", ["TegenRek"], :name => "ix_trekening"

end
