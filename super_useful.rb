# PHASE 2
def convert_to_int(str)
  Integer(str)
rescue ArgumentError => err
  nil
rescue TypeError => err
  nil
rescue
  nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise ArgumentError
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  error_count = 0
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue ArgumentError => err
    retry
  rescue StandardError => err
    error_count += 1
    retry if (error_count == 1)
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    if name.length <= 0
      raise "Name has to have length greater than zero."
    end
    if yrs_known < 5
      raise "Friendships need at least five years to mature."
    end
    if fav_pastime.length <= 0
      raise "Favorite Passtime has to have length greater than zero."
    end
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end
