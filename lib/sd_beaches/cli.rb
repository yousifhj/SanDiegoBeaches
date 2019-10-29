class Cli
    
    def run
        puts "Welcome to San Diego's Beaches and Bays"
        puts "70 Miles of Glorious Coastline Signature is San Diego's Signature Attraction "
        puts "These are the top beaches in San Diego"
        puts " "
        puts "-----------------------------------------------------------------------------"
        puts " "
        
        html = open("https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx")
        doc = Nokogiri::HTML(html)
        
        doc.css(".areas-of-interest_gallery").each do |beach|
        binding.pry 
      end 
      
    end 

end 

