class Beach 
  
    attr_accessor :name, :url, :description, :what_to_love, :what_to_know 

    @@all = []
    
    def initialize
      @@all << self 
    end 
    
    def self.all 
      @@all   
    end 
    
end 