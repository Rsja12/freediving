# TEST

class Freediving::Discipline 

    attr_accessor :name

    def self.all 
        puts <<-DOC
    1. Static Apnea
    2. Dynamic Apnea
    3. Constant Weight Apnea
    4. Variable Weight Apnea
    5. No Limits Apnea
        DOC
        # binding.pry 

        # discipline1 = Discipline.new 
        # discipline1.name = "Static Apnea"
        # discipline2 = Discipline.new 
        # discipline2.name = "Dynamic Apnea"
        # discipline3 = Discipline.new 
        # discipline3.name = "Constant Weight Apnea"
        # discipline4 = Discipline.new 
        # discipline4.name = "Variable Weight Apnea"
        # discipline5 = Discipline.new 
        # discipline5.name = "No Limits Apnea"

    end
 
 
    
end




