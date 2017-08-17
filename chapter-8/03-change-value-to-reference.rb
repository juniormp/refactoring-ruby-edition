# You have a class with many equal instances that you want to replace with a single object.
# Turn the object into a reference object.

# Use Replace Constructor with Factory Method.

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

# new

class Customer

  Instances = {}

  def self.load_customers
    new("Lemon Car Hire").store
    new("Associated Coffee Machines").store
    new("Bilston Gasworks").store
  end

  def store
    Instances[name] = self
  end

  def self.with_name(name)
    Instances[name]
  end
end

class Order
  attr_accessor :customer

  def initialize(customer_name)
    @customer = Customer.create(customer_name)
  end

  def customer=(customer_name)
    @customer = Customer.new(customer_name)
  end

  private

  def self.number_of_orders_for(orders, customer)
    orders.select { |order| order.customer_name == customer.name }.size
  end
end



