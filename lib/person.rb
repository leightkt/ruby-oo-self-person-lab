require 'pry'
# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    MaxHappiness = 10
    MinHappiness = 0
    MaxHygiene = 10
    MinHygiene = 0

    def initialize(name, happiness=8, hygiene=8)
        @name = name
        @bank_account = 25
        check_happiness(happiness)
        check_hygiene(hygiene)
    end

    def happiness=(input)
       check_happiness(input)
    end

    def hygiene=(input)
        check_hygiene(input)
    end

    def check_happiness(happiness)
        if happiness > MaxHappiness
            @happiness = MaxHappiness
        elsif happiness < MinHappiness
            @happiness = MinHappiness
        else @happiness = happiness
        end
    end

    def check_hygiene(hygiene)
        if hygiene > MaxHygiene
            @hygiene = MaxHygiene
        elsif hygiene < MinHygiene
            @hygiene = MinHygiene
        else @hygiene = hygiene
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene -= 3
        self.happiness = @happiness += 2
        return '♪ another one bites the dust ♫'
    end
    
    def call_friend(friend)
        self.happiness = @happiness += 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(convo_partner, topic)
        if topic == "politics"
            self.happiness = @happiness - 2
            convo_partner.happiness = convo_partner.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = @happiness + 1
            convo_partner.happiness = convo_partner.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end

# 