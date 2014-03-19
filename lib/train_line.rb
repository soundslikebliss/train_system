class Train_Line

attr_reader :name

  def initialize(attributes)
    @name = attributes['name']
  end

  def save
  end

  def self.all
    results = DB.exec("SELECT * FROM train_line;")
    train_lines = []
    results.each do |i|
      name = i['name']
      train_lines << Train_Line.new({'name' => name})
    end
    train_lines
  end

  def save
    DB.exec("INSERT INTO train_line (name) VALUES ('#{@name}') RETURNING id;")
  end

  def ==(another_train_line)
    self.name == another_train_line.name
  end


end
