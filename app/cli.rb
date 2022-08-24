class CLI 
    def initialize
        australiaSummary = " ****** As at 2021 Australia had a population of 25.6 million people 
        and nearly 9.8 million of households with a mean dwelling price of $856,000,000.
        "
        puts "
        ****** Welcome to a House Prices App ******
        "
        puts "#{australiaSummary}"
        puts "******  Learn more about housing."
        puts "
        Enter 1 or 2 to choose how to View Dwelling Prices & Population ******
        1 In a Specific Location (5 Year Timeline)
        2 On All Locations in a Year

        " 
        
        input = gets.strip
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



end