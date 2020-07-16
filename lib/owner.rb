require "pry"

class Owner
  @@all = []
  attr_reader :name, :species
  def initialzie
    @name = name 
    @species = human
    @@all << @name

  end 

  def say_species 
    "I am a human."
  end 

  def name 
    @name 
  end 

  def species 
    @species 
  end 

  def all
    #returns all instances of Owner that have been created
    @@all 
  end 

def count
  @@all.count
end 

def reset_all
  @@all = []
end 


  binding.pry

end