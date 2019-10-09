require 'pry'

class CLI 
    
    def call  
        self.greeting
        Scraper.scrape 
        self.prompt 
        loop do 
            input = menu 
            if input == "exit" || input.include?("n")
                self.goodbye
                return
            else
                self.list 
                self.valid 
            end
        end
    end

    def greeting
        puts "\nWelcome!\n"
    end

    def prompt 
        puts "Would you like to see a list of freediving disciplines?"
    end

    def menu 
        # puts "Would you like to see a list of freediving disciplines?"
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
     
    # def choice 
    #     puts "Choose the number of a discipline to learn more about it!"
    #     index = gets.strip.to_i - 1 
    #     discipline = Discipline.all[index]
    #     self.show_description(discipline)
    # end 

    def valid
        puts "Choose the number of a discipline to learn more about it!"
        index = gets.strip.to_i - 1
        discipline = Discipline.all[index]
        if index >= 0 && index <= 5
            self.show_description(discipline) 
            puts "\n Choose another one to learn about it, type 'list' to see the list, or type 'exit'."
        elsif index == 'list'
            self.list
        elsif index == 'exit'
            self.goodbye 
        else 
            puts "Sorry I don't understand what that means, but here's the list again: \n"
            self.list
        end
    end

    def show_description(discipline)
        puts "\n"
        puts discipline.description 
        puts "\n"
    end

    def goodbye 
        puts "\nThanks for stopping by!"
    end
end



