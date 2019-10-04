
require "pry"

class Freediving::Discipline 

    attr_accessor :name

    @@all = []

    def self.all 
        Freediving::Scraper.scrape_site
    end

    def self.all_descriptions 
        Freediving::Scraper.scrape_descriptions(the_discipline)
    end
 
 
    
end




