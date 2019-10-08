require 'pry'

class CLI 
    
    def call
        disciplines
        list_descriptions
        goodbye
    end

    def disciplines
        array = Scraper.scrape_site
        
    end
    
    # def list_disciplines 
    #     puts ""
    #     puts "Welcome! Check out this list of freediving disciplines!" 
    #     puts ""

    #     @disciplines = Discipline.all
    #     @disciplines.each.with_index(1) do |discipline, idx|
    #         puts "#{idx}. #{discipline}"
    #         puts ""
    #     end
    # end

    # def list_descriptions
    #     input = nil 
    #     while input != "exit"
    #         puts ""
    #         puts "Enter the number of the discipline you want to learn more about! Or type 'exit'. You can also type 'list' to see the list again."
        
    #         input = gets.chomp 
    #         @descriptions = Discipline.all_descriptions

    #         if input.to_i > 0 && input.to_i <= Discipline.all.count
    #             puts ""
    #             puts @descriptions[input.to_i - 1]   
    #         elsif input == "list"
    #             list_disciplines
    #         else
    #             puts ""
    #             puts "Sorry, please enter a number from 1-5, or 'list', or 'exit'."
    #         end
    #     end
    # end

    # def goodbye
    #     puts ""
    #     puts "Thanks for stopping by!"
    #     puts ""
    # end
   
    # test
end



