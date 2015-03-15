class Cart
  attr_accessor :cart_items

  def initialize(cart_items)
    @cart_items = cart_items || Hash.new
  end

  def add_item(item_id)
    @cart_items[item_id] = 0
    @cart_items[item_id] += 1
  end

  def cart_items_and_quantity
    items = Hash.new
    cart_items.select { |item_id, quantity| items[Item.find(item_id)] = quantity }
    items
  end
end
