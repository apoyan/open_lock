require 'set'

class OpenLock
  def initialize(start, target, disk_count, excluded_combinations)
    @start = start
    @target = target
    @disk_count = disk_count
    @excluded_combinations = excluded_combinations
  end
  
  def call
     visited = Set.new([@start])
     queue = [[@start]]
     new_path = []
     
     until queue.empty?
       size = queue.size
       while size > 0
         path = queue.shift
         current = path.last
      
         return path if current == @target
      
         if @excluded_combinations.include?(current)
           size -= 1
           next
         end

         @disk_count.times do |i|
        
           digit = current[i].to_i
           [-1, 1].each do |step|
             next_comb = (digit + step) % 10
             next_node = current[0...i] + next_comb.to_s + current[i+1..-1]
             if !@excluded_combinations.include?(next_node) && !visited.include?(next_node)
               queue << [path, next_node].flatten
               visited << next_node
             end
           end
         end

         size -= 1
       end
    
     end
     
     return "the lock can't be opened"
  end
end
