require 'open-uri'
require 'pry'
require 'nokogiri'

class Freediving::Scraper

    @doc = Nokogiri::HTML(open("https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"))
    
    def self.scrape_site
        discipline = @doc.css(".text-center h3").text.split(/(?<=APNEA)/)
    end
    
    def self.scrape_descriptions(the_discipline)
        arr = @doc.css(".text-center p").text
        desc = arr.split(/(?=[A-Z])/).drop(4)
        # last3 = desc.last(3)
        # last3.join(" ")
        binding.pry 
    end

    

end


# split1 = description.split(/(?=[A-Z])/) 
# split2 = split1.drop(4)
# split3 = split2.last(3)
# last3 = split3.join(" ")
