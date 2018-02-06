require 'pry'
class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id:, name:, type:, db:, hp:)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save(name, type, hp, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?, ?)", name, type, hp)
  end

  def self.find(id, db)
    spokemon = db.execute("SELECT * FROM pokemon WHERE id=?", id).flatten
    # binding.pry
    self.new(id: spokemon[0], name: spokemon[1], type: spokemon[2], hp: spokemon[3], db: db)
  end
end
