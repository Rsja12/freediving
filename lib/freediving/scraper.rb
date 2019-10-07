require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

    attr_accessor :name, :description 

    def self.scrape_site
        # iterate through the array that contains both dis and desc. then make a hash with key value pairs
        doc = Nokogiri::HTML(open("https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"))
        discipline_info = doc.css(".article-main__content .text-center")

        discipline_info.collect do |element|
            {
                :name => element.css("h3").text,
                :description => element.css("p").text
            }
        end
    end
    
end
