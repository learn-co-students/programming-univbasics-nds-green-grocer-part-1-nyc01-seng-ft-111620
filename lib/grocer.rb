def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |key|
    if key[:item] == name
        return key
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = {}
  array = []
  cart.each do |items|
    new_cart = items
    new_cart[:count] ? new_cart[:count] += 1 : new_cart[:count] = 1
    array << new_cart
  end
  array
end
