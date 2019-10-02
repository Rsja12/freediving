require 'pry'

class Freediving::CLI 


    def call
        list_disciplines
        menu
        goodbye
    end
    
    def list_disciplines 
        puts ""
        puts "Welcome! Check out this list of freediving disciplines!" 
        puts ""
        @disciplines = Freediving::Discipline.all
        @disciplines.each.with_index(1) do |dis, i|
            puts "#{i}. #{dis.name}"
        end
      
    end

    def menu 
        input = nil
        while input != "exit"
            puts ""
            puts "Enter the number of the discipline you want to learn more about, or type 'exit'."

            input = gets.strip 
           if input.to_i > 0
            the_discipline = @disciplines[input.to_i - 1]
            puts "#{the_discipline.description}"
           elsif input == "list"
            list_disciplines
           else
            puts "Not sure what you mean by that..."
        end
    end 

    def goodbye
        puts "Bye!"
    end
end



end
# Freediving::Scraper.scrape_site