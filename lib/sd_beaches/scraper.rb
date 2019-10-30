class Scraper


  def self.scrape_beaches
    html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx")
    doc = Nokogiri::HTML(html)
    doc.css(".areas-of-interest__gallery-entry").each do |beach|
      beach = Beach.new
      beach.attrication = beach.css(".areas-of-interest__text").text.strip.split(/(?<!\s)(?=[A-Z])/)
    end 
  end 
  
  def self.scrape_beaches_deatils(beach)
    
  end 
  
end 