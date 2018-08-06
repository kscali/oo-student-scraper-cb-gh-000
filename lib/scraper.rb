require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri:HTML(index_url)
    students = []
    
    docs.css(div.roster-cards-container)
    name = students.css(.student-name).map {|name| name.text}.compact
  
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

