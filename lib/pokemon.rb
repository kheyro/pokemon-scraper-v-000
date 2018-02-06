class Pokemon
  attr_accessor :name, :type, :db

  def initialize(name:, type:, db:)
    @name = name:
    @type = type:
    @db = db:
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    spokemon = db.execute("SELECT * FROM pokemon WHERE pokemon.id=id")
    self.new(spokemon[1], spokemon[2], db)
  end
end
