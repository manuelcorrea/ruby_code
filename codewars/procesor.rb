# The following code is supposed to use the Processor class (defined for you, code shown below) to do an upper case conversion on any string value contained within the hashes passed to it. Can you figure out why the code is not executing properly?

class Processor
  attr_reader :items_processed

  def initialize(&block)
    @block = block
    @items_processed = 0
  end

  # attempts to process the item. Only counts the item as processed
  # if the block returns true
  def process(*args)
    args.each do |item|
      @items_processed += 1 if @block.call(item)
    end
  end
end

mars = {name: 'mars', type: 'planet'}
earth = {ignore_processing: true, name: 'Earth', type: 'Planet'}

# only mars will have its values made all uppercase

processor = Processor.new do |item|
  if !item[:ignore_processing]
    item.keys.each do |key|
      item[key].upcase! if item[key].is_a?(String)
    end
  end
end

processor.process(mars, earth)

puts mars

puts earth