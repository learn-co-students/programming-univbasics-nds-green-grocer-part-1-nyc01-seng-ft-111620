require 'pry'

def find_item_by_name_in_collection(name, collection)
  return_value = nil
collection.each do |item|
  item.each do |key, value|
    if value == name
      return_value = item
    end
  end
end
return_value
end
 
 
  



def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |item|
    if consolidated_cart.include?(item)
      item[:count] = item[:count] + 1
    else 
      consolidated_cart << item
      item[:count] = 1
    end
    end
  end



  