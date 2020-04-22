class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(lvl)
        if lvl < 0
            @happiness = 0
        elsif lvl > 10
            @happiness = 10
        else
            @happiness = lvl
        end
        @happiness
    end

    def hygiene=(lvl)
        if lvl < 0
            @hygiene = 0
        elsif lvl > 10
            @hygiene = 10
        else
            @hygiene = lvl
        end
        @hygiene
    end

    

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(salary)
        self.bank_account += salary
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
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(recipient, topic)
        case topic
            when "politics"
                 self.happiness -= 2
                recipient.happiness -= 2
                "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness += 1
                recipient.happiness += 1
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah"
            end
    end
end