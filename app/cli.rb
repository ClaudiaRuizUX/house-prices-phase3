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
        View a Specific Location in a 5 Year Timeline) #{@decorationOneLine}"
        puts welcome
        puts intro
        puts learnMore
        puts instructionsOne
        loadSpecificLocation
    end

    def loadSpecificLocation
        @instructionsTwo = "
        (enter a Location Name or Number)
        "
        @specificLocationContent = ["Australian Capital Territory", "Northern Territory", "New South Wales",
        "Queensland", "South Australia", "Tasmania", "Victoria", "Western Australia"]
        @subtitle = "Median Prices (Q1) & Population"

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
        #  @input = gets.strip
        #  loadSectionTwo (@input)
        #  @input = gets.strip
        #  loadSectionTwo (@input)
        #  @input = gets.strip
        #  loadSectionTwo (@input)

        #  @input = gets.strip
        #  loadSectionTwo (@input)
        #  @input = gets.strip
        #  loadSectionTwo (@input)
        #  @input = gets.strip
        #  loadSectionTwo (@input)

        #  @input = gets.strip
        #  loadSectionTwo (@input)
        #  @input = gets.strip
        #  loadSectionTwo (@input)
        #  @input = gets.strip
        #  loadSectionTwo (@input)
    end

    def loadSectionTwo (input)
        regionName = ""
        case input
        when "1", "Australian Capital Territory", "ACT"
            regionName = "ACT"
            puts " #{@decorationOneLine} #{@specificLocationContent[0]} - #{@subtitle}"
            input = 4
        when "2", "Northern Territory", "NT"
            regionName = "Northern Territory"
            puts " #{@decorationOneLine} #{@specificLocationContent[1]} - #{@subtitle}"
            input = 2
        when "3", "New South Wales", "NSW"
            regionName = "New South Wales"
            puts " #{@decorationOneLine} #{@specificLocationContent[2]} - #{@subtitle}"
            input = 0
        when "4", "Queensland"
            regionName = "Queensland"
            puts " #{@decorationOneLine} #{@specificLocationContent[3]} - #{@subtitle}"
            input = 7
        when "5", "South Australia"
            regionName = "South Australia"
            puts " #{@decorationOneLine} #{@specificLocationContent[4]} - #{@subtitle}"
            input = 3
        when "6", "Tasmania"
            regionName = "Tasmania"
            puts " #{@decorationOneLine} #{@specificLocationContent[5]} - #{@subtitle}"
            input = 1
        when "7", "Victoria"
            regionName = "Victoria"
            puts " #{@decorationOneLine} #{@specificLocationContent[6]} - #{@subtitle}"
            input = 6
        when "8", "Western Australia"
            regionName = "Western Australia"
            puts " #{@decorationOneLine} #{@specificLocationContent[7]} - #{@subtitle}"
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
        @input = gets.strip
        loadSectionTwo (@input)
    end

end