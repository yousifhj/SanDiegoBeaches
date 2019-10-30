class Cli
    
    def run 
      welcome
      responce
    end 
    
    
    def run
        puts "Welcome to San Diego's Beaches and Bays"
        puts "70 Miles of Glorious Coastline Signature is San Diego's Signature Attraction "
        puts "These are the top beaches in San Diego"
        puts " "
        puts "-----------------------------------------------------------------------------"
        puts " "
        
        html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx")
        doc = Nokogiri::HTML(html)
        
        doc.css(".areas-of-interest__text").each do |beach|
          beach.css
          
          beach = index + 1 
          
          string.split(/(?<!\s)(?=[A-Z])/)
        binding.pry 
      end 
      
    end 

end 

