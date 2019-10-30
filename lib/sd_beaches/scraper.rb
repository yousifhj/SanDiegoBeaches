class Scraper

  def self.scrape_beaches
    html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx")
    doc = Nokogiri::HTML(html)
    doc.css(".areas-of-interest__gallery-entry").each do |b|
      beach = Beach.new
      beach.name = b.css(".areas-of-interest__text").text.strip
     # binding.pry
      beach.url = b.attribute("href").value
    end 
  end 
  
  def self.scrape_beaches_deatils(beach)
    html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx/#{beach.url}")
    doc = Nokogiri::HTML(html)
  end 
  
end 