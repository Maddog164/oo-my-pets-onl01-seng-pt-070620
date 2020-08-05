class Cat

  attr_reader :name, :owner
  attr_accessor :mood

  def initialize(name, owner)
    @name = name
    owner = owner.new(name)
  end

end
