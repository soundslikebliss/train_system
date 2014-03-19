require 'rspec'
require 'pg'
require 'train_line'
require 'train_station'

DB = PG.connect(:dbname => 'train_system_test')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM train_line *;")
    DB.exec("DELETE FROM train_station *;")
  end
end
