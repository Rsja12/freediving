require 'pry'

class Freediving::CLI 


    def call
        list_disciplines
        menu
        goodbye
    end
    
    def list_disciplines 
        puts "Welcome! Check out this list of freediving disciplines" 
        Freediving::Discipline.all.each.with_index(1) do |dis, i|
            puts "#{i}. #{dis.name}"
            # Test Commit
            # Another line
            # And another one
            # 4 commits
        end
        # binding.pry
    end

    def menu 
        input = nil
        while input != "exit"
            puts "Enter the number of the discipline you want to learn more about, or type 'exit'."
            input = gets.strip 
            case input 
            when "1"
                puts "More on 1"
            when "2"
                puts "More on 2"
            when "3"
                puts "More on 3"
            when "4"
                puts "More on 4"
            when "5"
                puts "More on 5"
            else
                puts "Please enter a valid command or type 'exit' to exit the program. "
            end
        end 
    end

    def goodbye
        puts "Bye!"
    end


end