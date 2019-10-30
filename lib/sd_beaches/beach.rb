class Beach
  
    attr_accessor :popular_activites, :what_to_love, :what_to_know, :attraction, :url
    
    @@all = []
    
    def initialize 
      @@all << self
    end 
    
    def self.all 
      @@all
    end 
    
end 