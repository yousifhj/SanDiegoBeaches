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
 
     container = doc.css("attributes__info")
        #binding.pry
  
        beach.what_to_love = doc.css("div.attributes__list")[0].text

        beach.what_to_know = doc.css("div.attributes__list")[1].text
    
    end
  end 

   

