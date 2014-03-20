class Train_Line

attr_reader :name, :id

  def initialize(attributes)
    @name = attributes['name']
    @id = attributes['id']
  end

  def save
  end

  def self.all
    results = DB.exec("SELECT * FROM train_line;")
    train_lines = []
    results.each do |i|
      name = i['name']
      id = i['id']
      train_lines << Train_Line.new({'name' => name, 'id' => id})
    end
    train_lines
  end

  def save
    result = DB.exec("INSERT INTO train_line (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first['id']
  end

  # def edit(user_input)
  #   DB.exec("SELECT * FROM train_line WHERE id = '#{@id}');")
  #   DB.exec("UPDATE train_line SET name = '#{@name}' WHERE name = '#{@id})';")
  # end



  def ==(another_train_line)
    self.name == another_train_line.name
  end

end
