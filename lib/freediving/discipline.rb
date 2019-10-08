
require "pry"

class Discipline 

    attr_accessor :name, :description

    @@all = [] 

    def initialize()
        
        
        @@all << self
    end
    
   def self.all 
    @@all 
   end

   def self.discipline_maker(array)
    
   end
    
end

 


