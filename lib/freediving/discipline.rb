# TEST
require "pry"
class Freediving::Discipline 

    attr_accessor :name
    
    @@all = []

    def self.all 
        discipline1 = self.new 
        discipline1.name = "Static Apnea"
        @@all << discipline1
        discipline2 = self.new 
        discipline2.name = "Dynamic Apnea"
        @@all << discipline2
        discipline3 = self.new 
        discipline3.name = "Constant Weight Apnea"
        @@all << discipline3
        discipline4 = self.new 
        discipline4.name = "Variable Weight Apnea"
        @@all << discipline4
        discipline5 = self.new 
        discipline5.name = "No Limits Apnea"
        @@all << discipline5
    end
 
 
    
end




