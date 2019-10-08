require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

    def self.scrape_names 
        doc = Nokogiri::HTML(open("https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"))

        discipline_info = doc.css(".article-main__content .text-center")
        
        discipline_info.collect do |element|
            name = element.css("h3").text
            Discipline.new(name)
        end
    end
    
    # binding.pry 
end



























    
    # BASE_URL = "https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"

    # def self.scrape_names
    #     doc = open(BASE_URL)
    #     parsed = Nokogiri::HTML(doc)
    #     dis_names = parsed.css(".text-center h3").text
    #     binding.pry 
    # end
    