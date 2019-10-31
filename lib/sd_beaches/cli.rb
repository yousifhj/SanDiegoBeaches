class Cli
    

    

    def run
        puts "-----------------------------------------------------------------------------"
        puts "Welcome to San Diego's Beaches and Bays"
        puts "70 Miles of Glorious Coastline Signature is San Diego's Signature Attraction "
        puts "These are the top beaches in San Diego"
        puts " "
        puts "-----------------------------------------------------------------------------"
        puts " "
        Scraper.scrape_beaches
        print_beaches
        puts " "
        puts "Select the number of the beach you want to see further details or type 'exit' to exit"
        input = gets.strip.downcase
        while input != 'exit' do 
          beach = Beach.all[input.to_i - 1]
          Scraper.scrape_beach_deatils(beach)
          print_beach(beach)
          puts " "
          puts "Would you like to see another beach?"
          puts "If so, select the number of the beach you want to see further details or type 'exit' to exit"
          input = gets.strip.downcase
        end 
        puts "Hope to see you soon!"
      end 
    
      def print_beach(beach)
        puts "#{beach.name}"
        puts "#{beach.what_to_love}"
        puts "#{beach.what_to_know}"
      end 
      
      def print_beaches     
        Beach.all.each.with_index(1) do |beach, index|
          puts "#{index}. #{beach.name}"
        end 
      end 
  
    end 

