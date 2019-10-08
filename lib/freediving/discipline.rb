
require "pry"

class Discipline 

    attr_accessor :name, :description

    @@all = [] 

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end
    
   def self.all 
    @@all 
   end

   def self.new_from_site
    
   end


    
end

 
binding.pry 

