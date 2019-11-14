class Scraper

  #Method 1 scrapes and makes all beach objects  know their own title and url
  def self.scrape_beaches
    
    html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx")
    
    doc = Nokogiri::HTML(html) 
   
    doc.css(".areas-of-interest__gallery-entry").each do |b|
    
    beach = Beach.new 
        
    beach.name = b.css(".areas-of-interest__text").text.strip 
        
    beach.url = b.attribute("href").value

    end
    
  end 
   
  #Method 2 is if the user whats to see details on a specific beach.
  #   whats to know and whats to love
  def self.scrape_beach_details(beach)
    
    html = open(beach.url)
    
    doc = Nokogiri::HTML(html)
 
    container = doc.css("attributes__info")
        
    beach.description = doc.css(".text-block p")[0].text
    #binding.pry     
    beach.what_to_love = doc.css("div.attributes__list")[0].css("li").collect { |li| li.text}

    beach.what_to_know = doc.css("div.attributes__list")[1].css("li").collect { |li| li.text}
  end
  
end 

   

