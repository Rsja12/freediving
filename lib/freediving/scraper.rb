require 'open-uri'
require 'pry'
require 'nokogiri'

class Freediving::Scraper

    

    @doc = Nokogiri::HTML(open("https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"))
    
    def self.scrape_site
        discipline = @doc.css(".text-center h3").text.split(/(?<=APNEA)/) 
    end
    
    def self.scrape_descriptions(the_discipline)
        description = @doc.css(".text-center p").text #holds unnecessary info at the beginning of string
        binding.pry 
    end


end


# split1 = description.split(/(?=[A-Z])/) 
# split1.drop(4)
