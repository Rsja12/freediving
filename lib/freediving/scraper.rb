require 'open-uri'
require 'pry'
require 'nokogiri'

class Freediving::Scraper


    def self.scrape_site

        doc = Nokogiri::HTML(open("https://www.spotmydive.com/en/news/freediving-world-record-by-discipline-aida-ssi-padi"))

        discipline = doc.css(".text-center h3")

        # Test commit

        binding.pry 
    end
    


end