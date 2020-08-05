class Owner

  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []

  #def initialize(species, pets= {:fishes => [], :dogs => [], :cats =>[]})
  def initialize(name)
    @name= name
    @species= "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end

end
