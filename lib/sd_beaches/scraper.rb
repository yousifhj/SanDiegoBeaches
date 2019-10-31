class Scraper

  def self.scrape_beaches
    html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx")
    doc = Nokogiri::HTML(html)
   
      doc.css(".areas-of-interest__gallery-entry").each do |b|
        beach = Beach.new
        beach.name = b.css(".areas-of-interest__text").text.strip
        beach.url = b.attribute("href").value
        #binding.pry
      end 
    
  end 
  
  def self.scrape_beach_deatils(beach)
    html = open(beach.url)
    doc = Nokogiri::HTML(html)
    beaches = {}
    binding.pry
     beach.container = doc.css("div.attributes__info").each 
      beach.container.each do |link|
        if link.include?("What to Love")
        beach[:what_to_love] = link
      elsif link.include?("What to Know")
        beach[:what_to_know] = link
      end 
    end
  end 
 end 
   

