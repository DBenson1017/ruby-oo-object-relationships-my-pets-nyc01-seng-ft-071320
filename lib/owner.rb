require "pry"
require_relative './cat.rb'
require_relative './dog.rb'

class Owner
  @@all = []
  attr_reader :name, :species

  def initialize(name, species="human")
    @name = name 
    @species = species
    @@all << self
  end

def self.all
  @@all
end


  def say_species 
    "I am a human."
  end 

 

  def species 
    @species 
  end 

def self.count
 
  @@all.count

end 


def self.reset_all 
@@all.clear
end 

def dogs
  Dog.all.select do |dog|
     dog.owner == self
    end 
  end 

def cats
  Cat.all.select { |cat| cat.owner == self }
end 

# def buy_cat(cat_name)
#   Cat.all.select { |cat| cat.name == cat_name }
#  cat_name.owner=self 
# end 

def buy_cat(cat_name)
  cat = Cat.new(cat_name, self)
end 

def buy_dog(dog_name)
  cat = Dog.new(dog_name, self)
end 

def walk_dogs
  Dog.all.select do |dog|
    dog.mood = "happy"
  end 
end 

def feed_cats
  Cat.all.select do |cat|
    cat.mood = "happy"
end
end 

def sell_pets 
  Dog.all.select do |dog|
    dog.mood = "nervous"
    dog.owner = nil 
  end 
  Cat.all.select do |cat|
    cat.mood = "nervous"
    cat.owner = nil
  end   
end 

def list_pets 
  my_dogs = []
  my_cats = []
  Dog.all.select do |dog|
    if dog.owner == self 
      my_dogs << dog
    end 
  end 
   Cat.all.select do |cat|
      if cat.owner == self 
         my_cats << cat
      end
    end 
  "I have #{my_dogs.count} dog(s), and #{my_cats.count} cat(s)."

end

# binding.pry
end