class Cli
  
  def run 
    greeting
    first_option
    Scraper.scrape_beaches
    call
  end 
    
    def call 
      user_input = menu 
      if user_input == "exit"
        goodbye
        return
      else 
        list_beaches
      end 
    end 

    def greeting
      puts "-----------------------------------------------------------------------------"
      puts "Welcome to San Diego's Beaches and Bays"
      puts "70 Miles of Glorious Coastline Signature is San Diego's Signature Attraction "
      puts "These are the top beaches in San Diego"
      puts "-----------------------------------------------------------------------------"
    end 
    
    def first_option
      puts "Select the number of the beach you want to see further details or type 'exit' to exit"
    end 
    
    def menu
      input = gets.strip.downcase
      return input 
    end 
    
    def print_beaches     
       Beach.all.each.with_index(1) do |beach, index|
         puts "#{index}. #{beach.name}"
      end 
    end 
      
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
      
   
  
    end 

