require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

    # attr_accessor :name, :description 

    # def self.scrape_site
    #     doc = Nokogiri::HTML(open("https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"))

    #     discipline_info = doc.css(".article-main__content .text-center")

    #     discipline_info.collect do |element|
    #         {
    #             :name => element.css("h3").text,
    #             :description => element.css("p").text
    #         }
    #     end
    # end

    BASE_URL = "https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"

    def self.scrape_names
        doc = open(BASE_URL)
        binding.pry 
    end
    
end

