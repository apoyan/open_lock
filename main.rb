require_relative 'open_lock'

restricted_nodes = ['001', '100']
source = '000'
destination = '111'
disks = 3
open_lock = OpenLock.new(source, destination, disks, restricted_nodes)
result = open_lock.call

puts "from #{source} to #{destination}"
puts "restricted nodes: #{restricted_nodes}"
puts "result #{result}"