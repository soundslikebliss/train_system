class Train_Station

attr_reader :name

  def initialize(attributes)
    @name = attributes['name']
  end

  def self.all
    entry = DB.exec("SELECT * FROM train_station")
    train_stations = []
    entry.each do |result|
      name = result['name']
      train_stations << Train_Station.new({'name' => name})
    end
    train_stations
  end

  def save
    entry = DB.exec("INSERT INTO train_station (name) VALUES ('#{@name}') RETURNING id;")
  end

  def ==(another_train_station)
    self.name == another_train_station.name
  end

end
