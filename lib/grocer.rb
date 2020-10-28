require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |entry|
    if entry[:item] == name
      return entry
    end
  end
  nil
end



def consolidate_cart(cart)
  cart.each do |grocery_item|
    grocery_item.merge!(count: 1)
  end
  key_store = cart[0][:item]
  i = 1
  while i < cart.length do
    if cart[i][:item] == key_store
      cart[i][:count] += 1
    end
    i += 1
  end
   cart
end



  