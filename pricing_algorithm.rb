def new_price( rating , price_reference, shipping_cost)
    rating_dict = {
      'high' => 1.1,
      'low' => 0.9 
    }
    new_percentage = {
      15=> 0.75,
      25=> 0.775,
      50=> 0.8,
      75=> 0.825,
      100=> 0.85,
      200=> 0.875,
      400=> 0.9,
      600=> 0.925,
    }
    # price_suggestion = (price_reference - product_database.shipping_cost * 0.95) * 1.1    
    return (price_reference - (shipping_cost * (new_percentage[ new_percentage.keys.sort.find{|key| price_reference < key}] || 0.95) ) ) * (rating_dict[rating] || 1)
end
price_original = new_price( rating , price_reference, shipping_cost)