# clock
  # def grandfather_clock &block
  #   now = Time.now
  #   hours_passed = now.hour
  #   times = hours_passed.to_i
  #   while times > 0
  #     block.call
  #     times -= 1
  #   end
  # end

  # grandfather_clock do
  #   puts "DONG!"  
  # end

# Inner/Outer Proc-ing
  def log (block_name, &block)
    $nest_depth += 1
    tabs = $tab * $nest_depth
    puts "#{tabs}Starting #{block_name}..."
    var = block.call
    puts "#{tabs}...Finished #{block_name}, returning:"
    puts tabs + var
  end

  $nest_depth = -1
  $tab = "\t"

  log 'outer_block' do
    log 'inner_block' do
      log 'super_inner_block' do
        str = "Holy crap, an even inner sting am I!"
      end
      str = "I am the inner string!"
    end
    str = "I am the outer string!"
  end