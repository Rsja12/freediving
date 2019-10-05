require 'pry'

class Freediving::CLI 


    def call
        list_disciplines
        give_descriptions
        goodbye
    end
    
    def list_disciplines 
        puts ""
        puts "Welcome! Check out this list of freediving disciplines!" 
        puts ""
        @disciplines = Freediving::Discipline.all
        @disciplines.each.with_index(1) do |dis, i|
            puts "#{i}. #{dis}"
            puts ""
        end
    end

    # def menu 
    #     input = nil
    #     while input != "exit"
    #         puts ""
    #         puts "Enter the number of the discipline you want to learn more about, or type 'exit'."
    #         if input.to_i > 0
    #             the_discipline = @disciplines[input.to_i - 1]
    #             @descriptions = Freediving::Discipline.all_descriptions
    #             @descriptions.each do |des|
    #                 puts "#{des}"
    #             end
    #         end
    #      end
    # end 

    def give_descriptions
        input = gets.strip
        case input
        when "1"
            puts ""
            puts Freediving::Discipline.all_descriptions[0]
        when "2"
            puts ""
            puts Freediving::Discipline.all_descriptions[1]
        when "3"
            puts ""
            puts Freediving::Discipline.all_descriptions[2]
        when "4"
            puts ""
            puts Freediving::Discipline.all_descriptions[3]
        when "5"
            puts ""
            puts Freediving::Discipline.all_descriptions[4]
        when "list"
            list_disciplines
        when "exit"
            goodbye
        else
            puts "Please enter a valid command."
        end
    end

    







    def goodbye
        puts ""
        puts "Thanks for checking us out!"
        puts ""
    end

    
end





