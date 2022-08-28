require 'net/http'
require 'open-uri'
require 'json'
 
class GetRegions

  URL = "https://api.data.abs.gov.au/data/ABS,RES_DWELL_ST,1.0.0/5.8+7+6+5+4+3+2+1.Q?startPeriod=2018-Q1&endPeriod=2022-Q1&format=jsondata"

  def get_regions
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def region_price (gov_reference, region_name)
    regions = JSON.parse(self.get_regions)
    
    year_reference = 0
    year_label = 2018

    #populations = Population.find_by(date:"2018")
    
    #populations_by_year = populations.find_by(date:year_label)

    while year_reference < 16
      regions_api = regions["data"]["dataSets"][0]["series"]["0:#{gov_reference}:0"]["observations"]["#{year_reference}"][0]
      populations = Population.find_by(name: region_name)
      puts populations.population
      puts "   #{year_label} - $#{regions_api} price - #{populations.population} people" 
      year_reference = year_reference + 4
      year_label = year_label + 1
    end 
  end
end


# regionName = "ACT"
                # test = Population.find_by(name: regionName)
                # puts test.population

