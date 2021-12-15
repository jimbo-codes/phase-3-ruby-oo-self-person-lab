require 'pry'
# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        # end
    end   

    def happiness=(value)
        range = (0..10).to_a
        # binding.pry
        if range.include?(value)
            @happiness = value
        else
            if value>10
                @happiness = 10
            elsif value<0
                @happiness = 0
            end
        end
    end

    def hygiene=(val)
        range = (0..10).to_a
        # binding.pry
        if range.include?(val)
            @hygiene = val
        else
            if val>10
                @hygiene = 10
            elsif val<0
                @hygiene = 0
            end
        end
    end

    def happy?
        hap = self.happiness > 7
    end

    def clean?
        clean = self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account+= amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene=(self.hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness=(self.happiness+2)
        self.hygiene=(self.hygiene-3)
        "♪ another one bites the dust ♫"
    end
    def call_friend(name)
        name.happiness=(name.happiness+3)
        self.happiness=(self.happiness+3)
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            person.happiness=(person.happiness-2)
            self.happiness=(self.happiness-2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness=(person.happiness+1)
            self.happiness=(self.happiness+1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

# John = Person.new("John")
# p John.happy