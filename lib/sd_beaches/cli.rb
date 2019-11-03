class Cli
  
  def run
    sleep(0.5)
    puts "-----------------------------------------------------------------------------"
    puts " "
    puts "Welcome to San Diego's Beaches and Bays"
    puts "70 Miles of Glorious Coastline Signature is San Diego's Signature Attraction "
    puts " "
    puts "-----------------------------------------------------------------------------"


    Scraper.scrape_beaches
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
         # binding.pry
          Scraper.scrape_beach_details(beach) 
          print_beach_details(beach)
          puts " "
          puts "Type list if you would you like to see the list of beaches again."
          puts "To learn about a different beach please select a different beach or type 'exit' to exit"
          
          input = gets.strip.downcase
        elsif input.to_i <= 0 || input.to_i >= Beach.all.length
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
      puts "#{print_what_to_love(beach)}"
      puts " "
      puts "-----------------------------------------------------------------------------"
      puts " "
      puts "What to Know:"
      puts " "
      puts "#{print_what_to_know(beach)}"
      puts " "
      puts "-----------------------------------------------------------------------------"
      puts " "
    end 
    binding.pry
      def print_what_to_love(beach)
         beach.what_to_love.join(", ")
      end 
      
      def print_what_to_know(beach)
         beach.what_to_know.join(", ")
      end 
      
      def print_beaches    
        Beach.all.each.with_index(1) do |beach, index|
          puts "#{index}. #{beach.name}"
          sleep (0.20)
        end 
      end 


end 
