
require "pry"

class Discipline 

    def self.all 
       Scraper.scrape_site
    end

    def self.all_descriptions 
        Scraper.scrape_descriptions
    end
    
end




