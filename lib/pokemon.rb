class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    spokemon = db.execute("SELECT * FROM pokemon WHERE pokemon.id=?", id)
    self.new(id: id, name: spokemon[1], type: spokemon[2], db: db)
  end
end
