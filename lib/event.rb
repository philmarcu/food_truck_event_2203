class Event

  attr_reader :name, :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck.inventory.keys.include?(item)
    end
  end

  def sorted_item_list
    @food_trucks.map do |truck|
      truck.inventory.sort_by do |item|  # |item, quantity| still gives issues
        item.first.name
        # require "pry"; binding.pry
      end
    end.flatten.uniq
  end

  def overstocked_items

  end

end
