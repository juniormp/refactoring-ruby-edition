# You have a data item that needs additional data or behavior.
# Turn the data item into an object.

class Order
  attr_accessor :customer
  def initialize(customer)
    @customer = customer
  end

  private
  def self.number_of_orders_for(orders, customer)
    orders.select { |order| order.customer == customer }.size
  end
end

# new
# value object it order has its own customer object

class Customer
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Order
  attr_accessor :customer

  def initialize(customer_name)
    @customer = Customer.new(customer_name)
  end

  def customer=(customer_name)
    @customer = Customer.new(customer_name)
  end

  private

  def self.number_of_orders_for(orders, customer)
    orders.select { |order| order.customer_name == customer.name }.size
  end
end
