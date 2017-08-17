# You have a Hash that stores several different types of objects, and is passed around and used for more than one purpose.
# Replace the Hash with an object that has a field for each key.

new_network = { :nodes => [], :old_networks => [] }

new_network[:old_networks] << node.network
new_network[:nodes] << node

new_network[:name] = new_network[:old_networks].collect do |network|
  network.name
end.join(" - ")

# new

class NetworkResult
  attr_reader :old_networks, :nodes
  attr_accessor :name

end
