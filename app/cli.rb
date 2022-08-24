class CLI 

    def initialize
        # global decoration
        @decorationOneLine ="******  "
        @decorationTwoLines ="
        ******"

        # sectionHome intro
        welcome =  "#{@decorationTwoLines} Welcome to a House Prices App #{@decorationOneLine}"
        intro = "#{@decorationOneLine}As at 2021 Australia had a population of 25.6 million people 
        and nearly 9.8 million of households with a mean dwelling price of $856,000,000.
        "
        learnMore = "#{@decorationOneLine}Learn more about housing:"

        # sectionHome index
        instructions = "
        Choose how to View Dwelling Prices & Population #{@decorationOneLine}"
        indexHome =  "
        1 In a Specific Location (5 Year Timeline)
        2 On All Locations in a Year

        (enter 1 or 2)
        " 

        # intro sectionHome
        puts welcome
        puts intro
        puts learnMore

        # index sectionHome
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
        # content
        intro = "#{@decorationOneLine}Dwelling Prices and Population (5 Year)
        In a Specific Location"
        instructions = "Enter a Location Name or Number:

        1 Australia
        2 NSW
        3 Victoria
        4 Queensland
        5 Western Australia
        6 Tasmania
        7 Northern Territory
        8 Australian Capital Territory
        "
        # sectionOne
        puts intro
        puts instructions

        
    end



end

    # def getLocation
    # end

    # def getYear
    # end

    # def getPopulation
    # end

    # @ausYearSummary = ""
    # @ausPopulationSummary = ""
    # @ausPriceSummary = ""

# BUG TRACKING
    # error: if I want to type right after I type wrong, still quits

# TO DO
    # australiaSummary: PopulationTable: AusYear2021, PopulationNumber, MeanPrice
