def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item|
    if item[:item] == name
      return item
    end
  end
  NIL
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  final_cart = []
  
  cart.each do |item_hash|
    found = false
    final_cart.each do |i|
      item_name = item_hash[:item]
      if i[:item] == item_name
        i[:count] += 1 
        found = true
      end
    end
    if !found
      item_hash[:count] = 1 
      final_cart << item_hash
    end
  end
  final_cart
end


  