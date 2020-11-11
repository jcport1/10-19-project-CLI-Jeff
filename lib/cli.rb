#Command line interface *the control center* 
#will intract w/ the user & connect our files together
#any code where we're interacting w/ user
#any puts or get statements
#ccontrol the flow of our porgram

class CLI

def start
    puts "Welcome"
    #API.fetch_drinks *grab info you need
    #then takes us to another method that controls other parts of your program
    #self.menu
end 

def menu 

    puts "Would you like to see the list of drinks?"
    puts "Type 'yes' to continue or any other key to exit."
    user_input = gets.strip.downcase #strip method for user input
    if user_input == "yes" || user_input == "y"
        puts "Good choice!"
        #if new task use a new method
        display_list_of_drinks #use a very specific method name 
        ask_user_for_drink_choice #another instance method that is implcity being called on self
    else 
        #end the program 
        puts "Goodbye!"
    end 
end 

def ask_user_for_drink_choice
    input = gets.strip.to_i #input will come across a string - but we want to change it to an integer
    index = input - 1
    #index 2
    #drink_instance = Drink.all[index] *access the elements using bracket notation


def display_list_of_drinks
    #Access all the drinks
    #print each one out
    Drink.all.each.with_index(1) do |drink, index| #call class method in the drink class that is keeping track of all drinks
        puts "#{index}. #{drink.name}" #print out name attribute otherwise you'll get the object id

    end 
end 

end 
