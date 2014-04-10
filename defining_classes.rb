# Cheating Die
  # class Die
  #   def initialize
  #     #rolls the die on initialize so there is a default number showing
  #     roll
  #   end

  #   def roll
  #     @number_showing = 1 + rand(6)
  #   end

  #   def showing
  #     @number_showing
  #   end

  #   def cheat
  #     puts 'Pick you number'
  #     number = gets.chomp.to_i
  #     if number < 1 || number > 6
  #       puts 'Must be between 1 and 6'
  #       self.cheat
  #     end
  #   end
  # end

  # puts Die.new.cheat

# Baby dragon
  # class Dragon
  #   def initialize name
  #     @name = name
  #     @asleep = false
  #     @stuff_in_belly = 10 # he's full
  #     @stuff_in_intestine = 0 # he doesn't need to go

  #     puts "#{name} is born."
  #   end

  #   def feed
  #     puts "You feed #{@name}"
  #     @stuff_in_belly = 10
  #     passage_of_time
  #   end

  #   def walk
  #     puts "You walk #{@name}"
  #     @stuff_in_intestine = 0
  #     passage_of_time
  #   end

  #   def put_to_bed
  #     puts "You put #{@name} to bed"
  #     @asleep = true
  #     3.times do
  #       if @asleep
  #         passage_of_time
  #       end
  #       if @asleep
  #         puts "#{@name} snores, filling the room with smoke"
  #       end
  #     end
  #     if @asleep
  #       @asleep = false
  #       puts "#{@name} wakes up slowly"
  #     end
  #   end

  #   def toss
  #     puts "You toss #{@name} up into the air"
  #     puts "He giggles, which singes your eyebrows"
  #     passage_of_time
  #   end

  #   def rock
  #     puts "You rock #{@name} gently"
  #     @asleep = true
  #     puts "He briefly dozes off..."
  #     passage_of_time
  #     if @asleep
  #       @asleep = false
  #       puts "...but wakes when you stop"
  #     end
  #   end
    

  #   private
  #   def hungry?
  #     @stuff_in_belly <= 2
  #   end

  #   def poopy?
  #     @stuff_in_intestine >= 8
  #   end

  #   def passage_of_time
  #     if @stuff_in_belly > 0
  #       @stuff_in_belly =     @stuff_in_belly - 1
  #       @stuff_in_intestine = @stuff_in_intestine + 1
  #     else
  #       if @asleep
  #         @asleep = false
  #         puts "He suddenly wakes up!"
  #       end
  #       puts "#{@name} is starving! In desparation, he ate YOU!"
  #       exit
  #     end

  #     if @stuff_in_intestine >= 10
  #       @stuff_in_intestine = 0
  #       puts "Whoops! #{@name} had an accident..."
  #     end

  #     if hungry?
  #       if @asleep
  #         @asleep = false
  #         puts "He wakes up suddenly!"
  #       end
  #       puts "#{@name}'s stomach grumbles..."
  #     end

  #     if poopy?
  #       if @asleep
  #         @asleep = false
  #         puts "He wakes up suddenly!"
  #       end
  #       puts "#{@name} does the potty dance..."
  #     end
  #   end

  # end

  # pet = Dragon.new 'Norbert'
  # pet.feed
  # pet.toss
  # pet.walk
  # pet.put_to_bed
  # pet.rock
  # pet.put_to_bed
  # pet.put_to_bed
  # pet.put_to_bed
  # pet.put_to_bed

# Orange Tree

  # class OrangeTree

  #   def initialize
  #     @height = 0
  #     @orange_count = 0
  #     @local_count = 0
  #     @age = 0
  #   end

  #   def count_the_oranges
  #     puts "There are #{@local_count} oranges on the tree"
  #   end

  #   def pick
  #     if @age < 5
  #       puts "This tree is not old enough produce fruit, yet"
  #     elsif @local_count < 1
  #       puts "You ate all the oranges this year!"
  #     else
  #       puts "You picked on of the #{@local_count} orange(s)"
  #       @local_count -= 1
  #       puts "There are now #{@local_count} left"
  #     end
  #   end

  #   def one_year_passes
  #     @age += 1
  #     # Modifies Height
  #     if @age < 2
  #       @height = 1
  #       puts "The height is now #{@height} feet tall"
  #     elsif @age < 50
  #       @height *= 1.2
  #       puts "The height is now #{@height} feet tall"
  #     else
  #       @height = 1.05
  #       puts "The height is now #{@height} feet tall"
  #     end

  #     # Increases @orange_count
  #     if @age < 5
  #       @orange_count = 0
  #     elsif @age == 6
  #       @orange_count = 5
  #     else
  #       @orange_count *= 1.2
  #       @orange_count = @orange_count.floor
  #     end

  #     # Resets @local_count to track this years orange picks
  #     @local_count = 0
  #     @local_count = @orange_count

  #     if @age > 100
  #       puts "Our friend the orange tree has moved on"
  #       exit
  #     end
  #   end
  # end

  # tree = OrangeTree.new

  # 15.times do
  #   tree.count_the_oranges
  #   tree.pick
  #   tree.one_year_passes
  # end


# Interactive Baby Dragon
class Dragon
    def initialize name
      @name = name
      @asleep = false
      @stuff_in_belly = 10 # he's full
      @stuff_in_intestine = 0 # he doesn't need to go

      puts "#{name} is born."
      action
    end

    def action
      puts "What would you like to do with little #{@name}?"
      puts "'feed', 'walk', 'put to bed', 'toss', or 'rock' him?"
      input = gets.chomp.downcase
      case
      when input == 'feed'
        feed
      when input == 'walk'
        walk
      when input == 'put to bed'
        put_to_bed
      when input == 'toss'
        toss
      when input == 'rock'
        rock
      else
        puts "That is not a valid thing for #{@name} to do"
      end
      self.action
    end

    def feed
      puts "You feed #{@name}"
      @stuff_in_belly = 10
      passage_of_time
    end

    def walk
      puts "You walk #{@name}"
      @stuff_in_intestine = 0
      passage_of_time
    end

    def put_to_bed
      puts "You put #{@name} to bed"
      @asleep = true
      3.times do
        if @asleep
          passage_of_time
        end
        if @asleep
          puts "#{@name} snores, filling the room with smoke"
        end
      end
      if @asleep
        @asleep = false
        puts "#{@name} wakes up slowly"
      end
    end

    def toss
      puts "You toss #{@name} up into the air"
      puts "He giggles, which singes your eyebrows"
      passage_of_time
    end

    def rock
      puts "You rock #{@name} gently"
      @asleep = true
      puts "He briefly dozes off..."
      passage_of_time
      if @asleep
        @asleep = false
        puts "...but wakes when you stop"
      end
    end
    

    private
    def hungry?
      @stuff_in_belly <= 2
    end

    def poopy?
      @stuff_in_intestine >= 8
    end

    def passage_of_time
      if @stuff_in_belly > 0
        @stuff_in_belly =     @stuff_in_belly - 1
        @stuff_in_intestine = @stuff_in_intestine + 1
      else
        if @asleep
          @asleep = false
          puts "He suddenly wakes up!"
        end
        puts "#{@name} is starving! In desparation, he ate YOU!"
        exit
      end

      if @stuff_in_intestine >= 10
        @stuff_in_intestine = 0
        puts "Whoops! #{@name} had an accident..."
      end

      if hungry?
        if @asleep
          @asleep = false
          puts "He wakes up suddenly!"
        end
        puts "#{@name}'s stomach grumbles..."
      end

      if poopy?
        if @asleep
          @asleep = false
          puts "He wakes up suddenly!"
        end
        puts "#{@name} does the potty dance..."
      end
    end

  end

pet = Dragon.new 'Norbert'











