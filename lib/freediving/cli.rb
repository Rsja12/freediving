class Freediving::CLI 


    def call
        list_disciplines
        menu
        goodbye
    end
    
    def list_disciplines 
        puts "Welcome! Check out this list of freediving disciplines" 
        Freediving::Discipline.all 
    end

    def menu 
        input = nil
        while input != "exit"
            puts "Enter the number of the discipline you want to learn more about, or type 'list' to see the list of disciplines again, or type 'exit'."
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
            when "list"
                list_disciplines
            else
                puts "Please enter 'list' to see the list or 'exit'. "
            end
        end 
    end

    def goodbye
        puts "Bye!"
    end


end