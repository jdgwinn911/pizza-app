def meats()
 meats = ["pepperoni", "sausage", "ham", "bacon", "chicken", "beef-wellington"]
 end

def cheese()
    cheese = ["pepperjack", "colbyjack", "parmesan", "mozzerella", "blue cheese", "nacho"]
end

def veggies()
    veggies = ["onion", "bell pepper", "jalapenos", "habenero", "banana peppers", "olives",]
end

def sauce()
    sauce = ["tomato sauce", "white sauce", "ranch", "mayo"] #ewww mayo lmao
end

def pizzaria
    puts "yo home-skillet how many pizzas do ya'll want?"
    pizza_counter = gets.chomp.to_i
    while pizza_counter > 0 do
    puts "i'mma get you a #{meats.sample}, #{cheese.sample}, #{veggies.sample}, #{sauce.sample} pizza" 
    pizza_counter -= 1 
    end
    puts "are you okay with that?"
    response = gets.chomp
    if response == "yes" 
        exit
    elsif response == "no"
        pizzaria
    else 
        puts " yes or no"
    end
end
 
pizzaria