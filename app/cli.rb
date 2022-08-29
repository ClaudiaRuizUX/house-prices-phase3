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
        instructionsOne = "
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
        puts instructionsOne
        puts indexHome
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
        @intro = "
        #{@decorationOneLine}Prices in a Specific Location (5 Year Timeline)"
        @instructionsTwo = "
        (enter a Location Name or Number)
        "
        @specificLocationContent = ["Australian Capital Territory", "Northern Territory", "New South Wales",
        "Queensland", "South Australia", "Tasmania", "Victoria", "Western Australia"]
        @subtitle = "Median Dwelling Prices & Population"
        # specificLocation section
        puts @intro
        @specificLocationContent.each_with_index {|subject, index| puts "#{@decorationOneLine} #{index+1} #{subject}" }
        puts @instructionsTwo
        @input = gets.strip
        if @input.empty?
            @input = gets.strip
         else
            loadSectionTwo (@input)
         end
         @input = gets.strip
         loadSectionTwo (@input)
         @input = gets.strip
         loadSectionTwo (@input)
         @input = gets.strip
         loadSectionTwo (@input)

         @input = gets.strip
         loadSectionTwo (@input)
         @input = gets.strip
         loadSectionTwo (@input)
         @input = gets.strip
         loadSectionTwo (@input)

         @input = gets.strip
         loadSectionTwo (@input)
         @input = gets.strip
         loadSectionTwo (@input)
         @input = gets.strip
         loadSectionTwo (@input)
    end

    def loadSectionTwo (input)
        regionName = ""
        case input
        when "1", "Australian Capital Territory", "ACT"
            regionName = "ACT"
            puts " #{@decorationOneLine} #{@subtitle} in #{@specificLocationContent[0]}"
            input = 4
        when "2", "Northern Territory", "NT"
            regionName = "Northern Territory"
            puts " #{@decorationOneLine} #{@subtitle} in #{@specificLocationContent[1]}"
            input = 2
        when "3", "New South Wales", "NSW"
            regionName = "New South Wales"
            puts " #{@decorationOneLine} #{@subtitle} in #{@specificLocationContent[2]}"
            input = 0
        when "4", "Queensland"
            regionName = "Queensland"
            puts " #{@decorationOneLine} #{@subtitle} in #{@specificLocationContent[3]}"
            input = 7
        when "5", "South Australia"
            regionName = "South Australia"
            puts " #{@decorationOneLine} #{@subtitle} in #{@specificLocationContent[4]}"
            input = 3
        when "6", "Tasmania"
            regionName = "Tasmania"
            puts " #{@decorationOneLine} #{@subtitle} in #{@specificLocationContent[5]}"
            input = 1
        when "7", "Victoria"
            regionName = "Victoria"
            puts " #{@decorationOneLine} #{@subtitle} in #{@specificLocationContent[6]}"
            input = 6
        when "8", "Western Australia"
            regionName = "Western Australia"
            puts " #{@decorationOneLine} #{@subtitle} in #{@specificLocationContent[7]}"
            input = 5
        else
            puts "sorry we that location is not available, try some from the below"
            @specificLocationContent.each_with_index {|subject, index| puts "#{@decorationOneLine} #{index+1} #{subject}" }
            puts @instructionsTwo
        end
        selectedRegion = GetRegions.new
        puts selectedRegion.region_price(input, regionName)
        puts " (type another region or hit enter to quit)
        "
    end

end