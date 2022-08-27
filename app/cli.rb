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
        print " Your input: "
        input = gets.strip

        # switcher
        if input == "1"
            loadSpecificLocation
        elsif input == "2"
            puts "Data on All Locations Coming Soon"
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

    def loadSpecificLocation
        # content specific location
        intro = "
        #{@decorationOneLine}Prices in a Specific Location (5 Year Timeline)"
        instructions = "
        Enter a Location Name or Number:
        "
        @specificLocationContent = ["Australia", "NSW", "Victoria", "Queensland",
        "Western Australia", "Tasmania", "Northern Territory",
        "Australian Capital Territory"]

        # specificLocation section
        puts intro
        puts instructions
        @specificLocationContent.each_with_index {|subject, index| puts "#{@decorationOneLine}#{index+1} #{subject}" }
    
        # switcher
        print "
        Your input: "
        input = gets.strip
        # puts "entered #{input}"
        selectedRegion = GetRegions.new
        puts selectedRegion.region_price(input)
        #switcher(input, @specificLocationContent)
    end
end