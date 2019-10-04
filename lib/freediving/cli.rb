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
            puts "#{i}. #{dis}"
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
            @descriptions = Freediving::Scraper.scrape_descriptions
            @descriptions.each do |des|
                puts "#{des}"
            end
        end
    end 

    def goodbye
        puts ""
        puts "Thanks for checking us out!"
        puts ""
    end
end



end

