require 'pry'

class CLI 
    
    def call  
        greeting 
        Scraper.scrape
        loop do 
            input = menu 
            if input == "exit" || input.include?("n")
                goodbye
                return
            else
                list 
                valid 
            end
        end
    end

    def greeting
        puts "\nWelcome!\n"
        puts "Would you like to see a list of freediving disciplines?\n"
    end

    def menu 
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

    def valid
        puts "Choose the number of a discipline to learn more about it!"
        index = gets.strip.to_i - 1
        discipline = Discipline.all[index]
        if index >= 0 && index <= Discipline.all.count 
            show_description(discipline) 
            puts "Enter anything to see the list again, or type 'exit'."
        elsif index == ''
            list
        elsif index == 'exit'
            goodbye
        else 
            puts "Sorry, that's not a valid option. Please enter anything to display the list again, or type 'exit' to leave the program."
        end
    end

    def show_description(discipline)
        puts "\n"
        puts discipline.description 
        puts "\n"
    end

    def goodbye 
        puts "\nThanks for stopping by!\n"
    end

end



