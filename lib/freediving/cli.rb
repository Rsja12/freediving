require 'pry'

class CLI 
    
    def call
        self.greeting
        Scraper.scrape_names 
    end

    def greeting
        puts "\nWelcome!\n"
    end

    
end



