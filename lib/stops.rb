class Stops

attr_reader :train_line_id, :train_station_id

  def initialize(attributes)
    @train_line_id = attributes['train_line_id']
    @train_station_id = attributes['train_station_id']
  end

  def save
  end

  def self.all
    results = DB.exec("SELECT * FROM stops;")
    stops = []
    results.each do |i|
      train_line_id = i['train_line_id']
      train_station_id = i['train_station_id']
      stops << Stops.new({'train_line_id' => train_line_id.to_i, 'train_station_id' => train_station_id.to_i})
    end
    stops
  end

  def save
    DB.exec("INSERT INTO stops (train_line_id, train_station_id) VALUES ('#{@train_line_id}', '#{train_station_id}') RETURNING id;")
  end

  def ==(another_stop)
    self.train_line_id == another_stop.train_line_id
    self.train_station_id == another_stop.train_station_id
  end


end
