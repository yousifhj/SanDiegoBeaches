class Cli
  
  def run 
    greeting
    first_option
    Scraper.scrape_beaches
    call
  end 
    
    def call 
      user_input = menu
      if user_input == "exit" || user_input == "n"
        goodbye
        return
      else 
        print_beaches
        choose_beach
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
      puts "Would you like to see the top beaches in San Diego  (y/n)?"
      
      reply = gets.chomp 
      
      case reply
      when "y"
        print_beaches
      when "n"
        puts "We hope to see you soon!"
      return
    end
  end 
    
    def print_beaches     
       Beach.all.each.with_index(1) do |beach, index|
         puts "#{index}. #{beach.name}"
      end 
    end 
      
    def choose_beach
      puts "Select the beach you want to learn more about."
      index = gets.strip.to_i - 1 
      beach = Beach.all[index]
      # if input_valid?(index)
      # self.description(beach)
      # self.what_to_know(beach)
      # self.what_to_know(beach)
    end 
      
      
        # while input != 'exit' do 
        #   beach = Beach.all[input.to_i - 1]
          
      #     Scraper.scrape_beach_deatils(beach)
      #     print_beach(beach)
      #     puts " "
      #     puts "Would you like to see another beach?"
      #     puts "If so, select the number of the beach you want to see further details or type 'exit' to exit"
         # input = gets.strip.downcase
       
       
      def menu
        input = gets.strip.downcase
        return input 
      end
    
      def print_beach(beach)
        puts "#{beach.name}"
        puts "#{beach.what_to_love}"
        puts "#{beach.what_to_know}"
      end 
     
    def input_valid?(input)
      input == input.to_i
      input >= 0 && input <= Beach.all.length
    end
      
    def error 
      puts "That is not a valid opetion. Please try again"
  
    def come_again
      puts "Hope to see you soon!"
    end 
    
  end 

end
