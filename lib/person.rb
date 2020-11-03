require "pry"

class Person
    attr_accessor 
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(num)
        @bank_account = num
    end

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end
    end

    def hygiene=(num)
        if num > 10
            @hygiene = 10
            10
        elsif num < 0
            @hygiene = 0
            0
        else
            @hygiene = num
            num
        end
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(num)
        @bank_account += num
        "all about the benjamins"
    end

    def take_bath
        
        @hygiene = hygiene=((@hygiene+4))
        # binding.pry
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
end
