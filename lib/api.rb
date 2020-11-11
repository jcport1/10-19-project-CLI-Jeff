#set up a like a class
#responsible for talking with our API

class API
    
    def self.start

        #puts "Welcome Message"
        #input = gets.strip
        
        url = #put url here in quotes
        uri = URI(url) #changes url into an object 
        #now that we an object, we can send a request 
        #using the Net gem we installed
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response) #parse it out so we can work with a hash/better format
        #array_of_drinks = hash["name of level you're going into"]
        #array_of_drinks.each do |drink|
            #drink.new iterate through each drink & create an object w/ .new
            #Drink.new(drink["idDrink"], drink["strDrink"], etc. ) #must match watch we have in our initialize 
        #end 

        binding.pry

    end 

end 