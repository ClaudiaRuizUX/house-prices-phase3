class CLI 

    def initialize
        # global decoration
        @decorationOneLine ="******  "
        @decorationTwoLines ="
        ******"

        # intro home
        welcome =  "#{@decorationTwoLines} Welcome to a House Prices App #{@decorationOneLine}"
        intro = "#{@decorationOneLine}As at 2021 Australia had a population of 25.6 million people 
        and nearly 9.8 million of households with a mean dwelling price of $856,000,000.
        "
        learnMore = "#{@decorationOneLine}Learn more about housing:"

        # index home
        instructions = "
        Choose how to View Dwelling Prices & Population #{@decorationOneLine}"
        indexHome =  "
        1 In a Specific Location (5 Year Timeline)
        2 On All Locations in a Year

        (enter 1 or 2)
        "
        # sectionHome
        puts welcome
        puts intro
        puts learnMore
        puts instructions
        puts indexHome
        input = gets.strip

        # switcher
        if input == "1"
            loadSectionOne
        elsif input == "2"
            puts "oookay"
        else
        # error 
            puts "please enter either 1 or 2 instead"
            input = gets.strip
            begin
                #... process, may raise an exception
            rescue => error
               puts error.message
               puts "Enter 1 or 2 instead of #{input}"
            else
                puts "the app is going to quit now"
            ensure
                input = gets.strip
            end
        end
    end

    def loadSectionOne
        # content one
        intro = "#{@decorationOneLine} Prices in a Specific Location (5 Year Timeline)"
        instructions = "Enter a Location Name or Number:"
        @sectionOneContent = ["Australia", "NSW", "Victoria", "Queensland",
        "Western Australia", "Tasmania", "Northern Territory",
        "Australian Capital Territory"]

        # sectionOne
        @sectionOneContent.each_with_index {|subject, index| puts "#{@decorationOneLine}#{index+1} #{subject}" }
    
        # switcher
        input = gets.strip
        switcher(input, @sectionOneContent)
    end
    
    def switcher(input, sectionContent)
        sectionContent.each_with_index { |subject, index|
            order = index+1
            case input.to_i
            when order, subject
                puts "getSpecificLocation(#{order})"
            end
        }   
    end
end






    def getSpecificLocation (order)

    end

    







    
# BUG TRACKING
    # error: if I want to type right after I type wrong, still quits

# TO DO
    # australiaSummary: PopulationTable: AusYear2021, PopulationNumber, MeanPrice
