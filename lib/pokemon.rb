class Pokemon
  attr_accessor :name, :type, :db

  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end

  def self.save
    ins = @db.prepare("INSERT INTO pokemon (name, type) VALUES (?, ?)")
    ins.execute(name, type)
  end

  def self.find
  end
end
