require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

    def self.scrape 
        doc = Nokogiri::HTML(open("https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"))

        discipline_info = doc.css(".article-main__content .text-center").select.with_index { |word, idx| idx.even? }
        
        discipline_info.collect do |element|
            name = element.css("h3").text
            description = element.css("p").text
            Discipline.new(name, description)
        end
    end
    # binding.pry 
end



























    
   
    