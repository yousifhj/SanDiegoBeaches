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
        beaches = []
        doc.css(".areas-of-interest__gallery-entry").each do |beach|
            attrication = beach.css(".areas-of-interest__text").text.strip.split(/(?<!\s)(?=[A-Z])/)
            beaches << attrication 
        end 
            
        beaches.each.with_index(1) do |attrication, index|
          puts "#{index}. #{attrication}"
        end 
      
      end 

    end 




 

