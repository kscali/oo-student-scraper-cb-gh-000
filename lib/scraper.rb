require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri:HTML(index_url)
    students = []
    
    docs.css('div.roster-cards-container').each do |card|
      card.css('.student-name a').each do |student|
        student_profile_link = "#{student.attr('href')}"
        student_location = student.css('.student-location').text
        student_name = student.css('.student-name').text
        
        students << {name: student_name, location: student_location, profile_url: student_profile_link}
      end 
    end 
    students
  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(profile_url)
    social_links = []
    
    doc.css(div.social-icon-container a).each do |social|
      
    
  end

end

