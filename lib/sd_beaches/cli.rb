class Cli
  
  def run
    
    puts "-----------------------------------------------------------------------------"
    puts " "
    puts "Welcome to San Diego's Beaches and Bays"
    puts "70 Miles of Glorious Coastline Signature is San Diego's Signature Attraction "
    puts "These are the top beaches in San Diego"
    puts " "
    puts "-----------------------------------------------------------------------------"


    Scraper.scrape_beaches
    sleep (0.5)
    print_beaches
    sleep (0.5)
    puts " "
    puts "-----------------------------------------------------------------------------"
    puts " "
    puts "Enter the number of the beach you want to read more about or type 'exit'."
    puts " "
    puts "-----------------------------------------------------------------------------"
        
    input = gets.strip.downcase
    
      while input != 'exit' do 
        if input == 'list'
          print_beaches
            puts "-----------------------------------------------------------------------------"
            puts " "
            puts "Enter the number of the beach you want to read more about or type 'exit'."
            puts " "
            puts "-----------------------------------------------------------------------------"
            input = gets.strip.downcase
        elsif input.to_i.between?(1, Beach.all.length)
          beach = Beach.all[input.to_i - 1]
          Scraper.scrape_beach_deatils(beach)
          print_beach_details(beach)
          
        end 
          
 
          
          puts " "
          puts "Would you like to see another beach?"
          puts "If so, select the number of the beach you want to see further details or type 'exit' to exit"
          input = gets.strip.downcase
        end 
        puts "Hope to see you soon!"
      end 
    
    
    def print_beach_details(beach)
      puts " "
      puts "#{beach.name}"
      puts "---------------------"
      puts " What to Love: "
      puts " "
      puts "#{beach.what_to_love}"
      puts "-----------------------------------------------------------------------------"
      puts "What to Know:"
      puts " "
      puts "#{beach.what_to_know}"
    end 
      
      def print_beaches     
        Beach.all.each.with_index(1) do |beach, index|
          puts "#{index}. #{beach.name}"
        end 
      end 
    end 

  