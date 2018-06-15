def meats()   # add prices, and add prices to toppings,delivery,and tip....take out sample and have user input what they want
 meats = ["pepperoni", "sausage", "ham", "bacon", "chicken", "beef-wellington"]
 meats[0..5]
 end

def cheese()
    cheese = ["pepperjack", "colbyjack", "parmesan", "mozzerella", "blue cheese", "nacho"]
    cheese[0..5]
end

def veggies()
    veggies = ["onion", "bell pepper", "jalapenos", "habenero", "banana peppers", "olives",]
    veggies[0..5]
end

def sauce()
    sauce = ["tomato sauce", "white sauce", "ranch", "mayo"] #ewww mayo lmao
    sauce[0..3]
end

def size()
    size = ["10 inch", "25 inch", "66 inch"]
    size[0..2]
end 

def pizzaria(meats, cheese, veggies, sauce, size)
    puts "to choose what you want,enter the assigned number"
    puts "what meat toppings do you want on your pizza?"; print "#{meats()} : "; type_of_meat = $stdin.gets.chomp
    puts "what kind of cheese do you want on your pizza?"; print "#{cheese()} : "; type_of_cheese = $stdin.gets.chomp
    puts "what kind of veggies do you want on your pizza?"; print "#{veggies()} : "; type_of_veggies = $stdin.gets.chomp
    puts "what kind of sauce do you want on your pizza?"; print "#{sauce()} : "; type_of_sauce = $stdin.gets.chomp
    puts "what size would you like your pizza to be?"; print "#{size()} : "; type_of_size = $stdin.gets.chomp
    price = 0
    case type_of_size.to_i
    when 1; p_size = size[0]; price += 10
    when 2; p_size = size[1]; price += 35
    when 3; p_size = size[2]; price += 50
    end 
    puts "your #{p_size} pizza will come with:"
    case type_of_meat.to_i
    when 1; p_meats = meats[0]; price += 10
    when 2; p_meats = meats[1]; price += 8
    when 3; p_meats = meats[2]; price += 9
    when 4; p_meats = meats[3]; price += 5
    when 5; p_meats = meats[4]; price += 6
    when 6; p_meats = meats[5]; price += 15
    end
    case type_of_cheese.to_i
    when 1; p_cheese = cheese[0]; price += 10
    when 2; p_cheese = cheese[1]; price += 2
    when 3; p_cheese = cheese[2]; price += 7
    when 4; p_cheese = cheese[3]; price += 4
    when 5; p_cheese = cheese[4]; price += 3
    when 6; p_cheese = cheese[5]; price += 5
    end 
    case type_of_veggies.to_i
    when 1; p_veggies = veggies[0]; price += 3
    when 2; p_veggies = veggies[1]; price += 7
    when 3; p_veggies = veggies[2]; price += 5
    when 4; p_veggies = veggies[3]; price += 4
    when 5; p_veggies = veggies[4]; price += 2
    when 6; p_veggies = veggies[5]; price += 4
    end
    case type_of_sauce.to_i
    when 1; p_sauce = sauce[0]; price += 4
    when 2; p_sauce = sauce[1]; price += 2
    when 3; p_sauce = sauce[2]; price += 3
    when 4; p_sauce = sauce[3]; price += 1
    end
    total = price * 1.16
    puts "that will be $#{total.round(1)}, after tax."
    puts "enjoy your pizza"
end
pizzaria(size, meats, cheese, veggies, sauce)
