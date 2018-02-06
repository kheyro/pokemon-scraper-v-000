require 'pry'
class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

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
    spokemon = db.execute("SELECT * FROM pokemon WHERE id=?", id).flatten
    # binding.pry
    self.new(id: spokemon[0], name: spokemon[1], type: spokemon[2], db: db)
  end

  def self.alter(hp, db)
    db.execute("UPDATE pokemon SET hp=?", hp)
  end
end
