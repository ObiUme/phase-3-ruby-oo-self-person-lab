# your code goes here
class Person

    def initialize(name, bank_account = 25, happiness=8, hygiene= 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def name 
        @name
    end

    def bank_account
        @bank_account 
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def happiness
        @happiness
    end

    def happiness=(happiness)
        @happiness = if happiness >= 10
            10
        elsif happiness < 0
            0
            else
                happiness
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        @hygiene = if hygiene >= 10
            10
        elsif hygiene < 0
            0
        else
            hygiene
        end
    end

    def happy?
        if self.happiness > 7
        true 
        else false
        end
    end

    def clean?
        if self.hygiene > 7
            true 
        else
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount 
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend, topic)
        case topic
        when "politics" 
            self.happiness -= 2
            friend.happiness -= 2
           return "blah blah partisan blah lobbyist"
        when "weather" 
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"      
        end
    end
end