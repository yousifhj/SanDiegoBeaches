class Cli
  
  def run
    
    puts "-----------------------------------------------------------------------------"
    puts " "
    puts "Welcome to San Diego's Beaches and Bays"
    puts "70 Miles of Glorious Coastline Signature is San Diego's Signature Attraction "
    puts " "
    puts "-----------------------------------------------------------------------------"


    Scraper.scrape_beaches
    sleep (0.5)
    print_beaches
    sleep (0.5)
    puts " "
    puts "-----------------------------------------------------------------------------"
    puts " "
    puts "To find your perfect beach please enter the number of the beach you would like to read more about."
    puts " "
    puts "-----------------------------------------------------------------------------"
        
    input = gets.strip.downcase
    
      while input != 'exit' do
        if input === 'list'
          print_beaches
            puts "-----------------------------------------------------------------------------"
            puts " "
            puts "Please enter the number of the beach you want to read more about or type 'exit'."
            puts " "
            puts "-----------------------------------------------------------------------------"
            
            input = gets.strip.downcase
        elsif input.to_i.between?(1, Beach.all.length)
          beach = Beach.all[input.to_i - 1]
          Scraper.scrape_beach_deatils(beach) 
          print_beach_details(beach)
          puts " "
          puts "Type list if you would you like to see the list of beaches again."
          puts "To learn about a different beach please select a different beach or type 'exit' to exit"
          input = gets.strip.downcase
        elsif input.to_i <=0 || input.to_i >= Beach.all.length
          puts "Invalid entry, please try again."
          input=gets.strip.downcase
        end 
        end 
        puts "-----------------------------------------------------------------------------"
        puts " "
        puts "Hope to see you soon!"
        puts " "
        puts "-----------------------------------------------------------------------------"
      end 

    
      
    def print_beach_details(beach)
      puts " "
      puts "#{beach.name}"
      puts "---------------------"
      puts " "
      puts " What to Love: "
      puts " "
      puts "#{beach.what_to_love}"
      puts " "
      puts "-----------------------------------------------------------------------------"
      puts " "
      puts "What to Know:"
      puts " "
      puts "#{beach.what_to_know}"
    end 
      
      # def print_what 
      #   beach.what_to_know.gsub!(/[^0-9A-Za-z]/, '')
      # end 
      
      def print_beaches     
        Beach.all.each.with_index(1) do |beach, index|
          puts "#{index}. #{beach.name}"
        end 
      end 


end 
