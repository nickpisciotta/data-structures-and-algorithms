# class Person 
#     attr_accessor :friends, :visited

#     def initialize(name) 
#         @name = name 
#         @friends = []
#         @visited = false
#     end 

#     def add_friend(friend) 
#         @friends << friend
#     end 

#     def display_network 
#         to_reset[self]

#         #Create queue with root vertex 
#         queue = [self]
#         self.visted = true

#         while (queue.any?) 
#             #current vertex is whatever is removed first from the queue 
#             current_vertex = queue.shift 
#             puts current_vertex.name

#             current_vertex.friends.each do |friend| 
#                 if !friend.visited
#                     to_reset << friend 
#                     queue << friend 
#                     friend.visited = true
#                 end 
#             end 
#         end 
#         to_reset.each do |node|
#             node.visited = false 
#         end 
#     end 

# end 

# mary = Person.new("Mary")
# mary.add_friend(Person.new("Martha"))
# mary.add_friend(Person.new("Peter"))


# class City 

#     attr_accessor :name, :route 

#     def initialize(name) 
#         @name = name 
#         @routes = {} 
#     end 

#     def add_route(city, price) 
#         routes[city] = price
#     end     

#     def dijkstra(starting_city, other_cities)
#         routes_from_city = {} 

#         routes_from_city[starting_city] = [0, starting_city]

#         other_cities.each do |city|
#             routes_from_city[city] = [Float::INFINITY, nil]
#         end 

#         visited_cities = []

#         current_city = starting_city

#         while current_city 
#             visited_cities << current_city

#             current_city.routes.each do |city, price_info| 
#                 if routes_from_city[city][0] > price_info + routes_from_city[current_city][0]
#                     routes_from_city[city] = [price_info + routes_from_city[current_city][0], current_city]
#             end 

#         end 


#     end 

# end 


# atlanta = City.new("Atlanta")
# boston = City.new("Boston")
# chicago = City.new("Chicago")
# denver = City.new("Denver")
# el_paso = City.new("El Paso")

# atlanta.add_route(boston, 100)
# atlanta.add_route(denver, 160)
# boston.add_route(chicago, 120)
# boston.add_route(denver, 180)
# chicago.add_route(el_paso, 80)
# denver.add_route(chicago, 40)
# devner.add_route(el_paso, 140)


$friend = {} 
$friend["me"] = ["alice", "bob", "claire"]
$friend["bob"] = ["anuj", "peggy"]
$friend["alice"] = ["peggy", "thom"]
$friend["claire"] = ["thom", "johnny"]
$friend["anju"] = []
$friend["peggy"] = []
$friend["thom"] = []
$friend["johnny"] = []


def search_for_seller(name) 
    search_queue = $friend[name]
    searched = []
    while !search_queue.empty?
        person = search_queue.shift
        if !searched.include?(person)
            if person_is_seller(person) 
                puts "#{person } is a mango seller"
                return true
            else 
                search_queue + $friend[person]
                searched.push(person)
            end
        end  
    end
    return false 
end 

def person_is_seller(name) 
    return name[-1] == "m"
end 


search_for_seller("me")