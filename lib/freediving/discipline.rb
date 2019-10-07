
require "pry"

class Discipline 

    attr_accessor :name, :description

    @@all = [] 

    def initialize(name=nil, description=nil)
        @name = name 
        @description = description 
        @@all << self
    end
    
   def self.all 
    @@all 
   end

   def self.discipline_maker
   
   end
    
end

binding.pry 


