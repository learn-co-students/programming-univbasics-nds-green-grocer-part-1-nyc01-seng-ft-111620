require 'pry'

# # def find_item_by_name_in_collection(name, collection)
# #   collection.each do |entry|
# #     if entry[:item] == name
# #       return entry
# #     end
# #   end
# #   nil
# # end



# def consolidate_cart(cart)
#   cart.each do |grocery_item|
#     grocery_item.merge!(count: 1)
#   end
#   key_store = cart[0][:item]
#   i = 1
#   while i < cart.length do
#     if cart[i][:item] == key_store
#       cart[i][:count] += 1
#     end
#     i += 1
#   end
#   cart
# end









# # def find_item_by_name_in_collection(name, collection)
# #   collection.each do |entry|
# #     if entry[:item] == name 
# #       return entry
# #     end
# #   end
# #   nil
# # end





# # def consolidate_cart(cart)
# #   key_store = cart[0][:item]
# #   cart.each do |entry|
# #     entry[:count] = 1
    
# #     entry.each do |key, value|
# #       #binding.pry
# #       if key_store == value
# #         entry[:count] += 1
# #       end
# #     end
# #   end
# #   cart
# #   binding.pry
# # end


# #puts consolidate_cart(cart)
  
  
  
  
  
#   # def find_item_by_name_in_collection(name, collection)
#   #   i = 0
#   #   while i < collection.length do 
#   #     if collection[i][:item] == name
#   #       return collection[i]
#   #     end
#   #     i += 1
#   #   end
#   #   nil
#   # end
  
#   def find_item_by_name_in_collection(name, collection)
#     collection.each do |entry|
#       if entry[:item] == name
#         return entry
#       end
#     end
#     nil
#   end
  
  
  
  
  
  
  
  
def find_item_by_name_in_collection(item_name, grocery_shelf)
  grocery_shelf.each do |entry|
    if entry[:item] == item_name
      return entry
    end
  end
  nil
end
  
  
def consolidate_cart(cart)
  new_cart = []
  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if !current_item
      grocery_item[:count] = 1
      new_cart << grocery_item
    else 
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] == current_item[:item]
          new_cart_item[:count] += 1
        end
      end
    end
  end
  new_cart
end 
  
  
# def consolidate_cart(cart)
#   new_cart = []
#   cart.each do |entry|
#     entry[:count] = 1
#     binding.pry
#   end
# end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  