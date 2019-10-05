require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

    @doc = Nokogiri::HTML(open("https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"))
    
    def self.scrape_site
        discipline = @doc.css(".text-center h3").text.split(/(?<=APNEA)/)
    end
    
    def self.scrape_descriptions
        arr = @doc.css(".text-center p").text
        desc = arr.split(/(?=[A-Z])/).drop(4)
        last3 = desc.last(3)
        lastd = last3.join(" ")
        new_arr = desc.shift(5)
        new_arr << lastd 

        first_part = new_arr.shift(2)
        last_part = new_arr.pop(2)
        middle = new_arr.join(" ")
        first_part << middle
        first_part << last_part

        descriptions_array = first_part.flatten  
    end

end