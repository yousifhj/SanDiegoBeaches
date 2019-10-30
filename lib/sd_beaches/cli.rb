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
        Scraper.scrape_beaches
        
        
      #add in loop to ask user question
      
        menu
        print_beaches
        
    end 
    
      def menu
        
      end 
      
      def print beaches     
        Beaches.all.each.with_index(1) do |attrication, index|
          puts "#{index}. #{attrication}"
        end 
      end 
  
      end 

    end 




 

