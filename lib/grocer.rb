def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  counter = 0 
  while counter < collection.length
  if collection[counter][:item] == name
    return collection[counter]
  end
    counter = counter + 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  counter = 0 
  new_cart = []
  while counter < cart.length 
    new_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_item != nil
      new_item[:count] = new_item[:count] + 1
    else
      new_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      new_cart << new_item
    end
    counter = counter + 1
  end
  return new_cart
end


  