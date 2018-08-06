require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri:HTML(index_url)
    students = docs.css(.student-card)
    name = students.css(.student-name)
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

