class Cli
  
  # BASE_PATH = "https://www.sandiego.org/explore/things-to-do/beaches-bays.aspx"
  
  def run 
    greeting
    Scraper.scrape_beaches
    list_beaches
    choose_beach
    binding.pry 
    # call
  end 
  
  def greeting
    puts "-----------------------------------------------------------------------------"
    puts "Welcome to San Diego's Beaches and Bays"
    puts "70 Miles of Glorious Coastline Signature is San Diego's Signature Attraction "
    puts "These are the top beaches in San Diego"
    puts "-----------------------------------------------------------------------------"
  end 
  
    def list_beaches   
      Beach.all.each.with_index(1) do |beach, index|
      puts "#{index}. #{beach.name}"
      end 
    end

      
    def choose_beach
      puts "What beach would you want to learn more about?"
        input = gets.strip
        beach = Beach.all[input.to_i - 1]
      # if input_valid?(index)
      #   self.description(beach)
      #   puts "Type 'list' to see list again, or type 'exit'"
      #   elsif index == "list"
      #   list_beach
      #   elsif index == "exit"
      #   goodbye
      #   return
      #   elsif !input_valid?(index)
      #   error
      #   list_beach
      #   choose_beach
       # end
    end 
       
       
  # def first_question
  #   puts "Would you like to see the top beaches in San Diego  (y/n)?"
      
  #   reply = gets.chomp 
  
  #   case reply
  #   when "y"
  #   list_beaches
  #   choose_beach
  #   when "n"
  #     puts "We hope to see you soon!"
  #   return
  # end
  
    # def call 
  #   loop do 
  #     user_input = menu      
  #     if user_input == "exit" || user_input == "n"
  #     goodbye
  #       return
  #     else 
  #       list_beaches
  #       choose_beach
  #     end 
  #   end 
  # end 
     
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


   # if input_valid?(index)
        # self.description(beach)
        # self.what_to_know(beach)
        # self.what_to_know(beach)
        # while input != 'exit' do 
        #   beach = Beach.all[input.to_i - 1]
          
      #     Scraper.scrape_beach_deatils(beach)
      #     print_beach(beach)
      #     puts " "
      #     puts "Would you like to see another beach?"
      #     puts "If so, select the number of the beach you want to see further details or type 'exit' to exit"
         # input = gets.strip.downcase
       