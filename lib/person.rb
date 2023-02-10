# your code goes here
class Person
# assigning attributes
    attr_reader :name, :happiness, :hygiene, :bank_account
    attr_accessor :amount, :topic, :friend
# initializing attributes
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
# defining methods
def name
    @name
end

def bank_account
    @bank_account
end

def bank_account=(value)
    @bank_account=(value)
end

def happiness
    @happiness
end
# allow person to change happiness
def happiness=(happiness)
# if happiness is less than 0, set happiness to 0
   if happiness < 0
    @happiness = 0
# if happiness is greater than 10, set happiness to 10
   elsif happiness > 10
    @happiness = 10
# else set happiness to happiness
   else
    @happiness = happiness
   end
end

def hygiene
    @hygiene
end
# allow person to change hygiene
def hygiene=(hygiene)
# if hygiene is less than 0, set hygiene to 0
    if hygiene < 0
     @hygiene = 0
# if hygiene is greater than 10, set hygiene to 10
    elsif hygiene > 10
     @hygiene = 10
# else set hygiene to hygiene
    else
     @hygiene = hygiene
    end 
end
# if hygiene is greater than 7, return true
# else return false
def clean?
   if @hygiene > 7
    true
   else
    false
   end
end
# if happiness is greater than 7, return true
# else return false
def happy?
    if @happiness > 7
     true
    else
     false
    end
end
# accept amount as an argument
def get_paid(amount)
    self.amount = amount
# add amount to bank account
    self.bank_account = @bank_account + self.amount
    "all about the benjamins"
end
# makes the person cleaner by 4 points
def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end
# makes the person happier by 2 points and 
# subtracts 3 points from the hygiene of the person
def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    "♪ another one bites the dust ♫"
end
# accepts a friend as an argument
# makes both people happier by 3 points
# returns a string
def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end
# accepts a friend and arguments
# if topic is politics, both people get sadder by 2 points and return
# "blah blah partisan blah lobbyist"
# if topic is weather, both people get happier by 1 point and return
# "blah blah sun blah rain"
# else, they both just return "blah blah blah blah blah"
def start_conversation(friend, topic)
    if topic == "politics"
        self.happiness = @happiness - 2
        friend.happiness = friend.happiness - 2
        "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness = @happiness + 1
        friend.happiness = friend.happiness + 1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end
end
end
