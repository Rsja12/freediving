require 'pry'

class CLI 
    
    def call
        self.greeting
        Scraper.scrape 
        loop do 
            input = menu 
            if input == "exit" || input.include?("n")
                return
            else
                self.list 
                self.choice 
            end
        end
    end

    def greeting
        puts "\nWelcome!\n"
    end

    def menu 
        puts "Would you like to see a list of freediving disciplines?"
        input = gets.strip.downcase 
        return input 
    end

    def list 
        puts ""
        Discipline.all.each.with_index(1) do |dis, idx|
            puts "#{idx}. #{dis.name}" 
            puts ""
        end
    end
     
    def choice 
        puts "Choose the number of a discipline to learn more about it!"
        index = gets.strip.to_i - 1 
        discipline = Discipline.all[index]
        self.show_description(discipline)
    end 

    def show_description(discipline)
        puts "\n"
        puts discipline.description 
        puts "\n"
    end

    

    
end



