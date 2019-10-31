class Scraper

  def self.scrape_beaches
    html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx")
    doc = Nokogiri::HTML(html)
    doc.css(".areas-of-interest__gallery-entry").each do |b|
      beach = Beach.new
      beach.name = b.css(".areas-of-interest__text").text.strip
      beach.url = b.attribute("href").value
    end 
  end 
  
  def self.scrape_beach_deatils(beach)
      binding.pry
    html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays/#{beach.url}")
    doc = Nokogiri::HTML(html)
  end 
  
end 

