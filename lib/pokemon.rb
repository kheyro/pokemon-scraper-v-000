class Pokemon
  attr_accessor :name, :type, :db

  def initialize(name)
  end

  def self.save
    @db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find
  end
end
