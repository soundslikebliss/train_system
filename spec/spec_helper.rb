require 'rspec'
require 'pg'
require 'train_line'
require 'train_station'
require 'stops'

DB = PG.connect(:dbname => 'train_system_test')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM train_line *;")
    DB.exec("DELETE FROM train_station *;")
    DB.exec("DELETE FROM stops *;")
  end
end
