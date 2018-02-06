class Pokemon
  attr_accessor :name, :type, :db

  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = pokemon.id")
    self.new(pokemon.name, pokemon.type, db)
  end
end
