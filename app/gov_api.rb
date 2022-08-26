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

  def region_price
    regions = JSON.parse(self.get_regions)
    puts regions["data"]["dataSets"][0]["series"]["0:0:0"]
  end
end

# regions = GetRegions.new
# puts regions.region_price

# regions = GetRegions.new.get_regions
# puts regions
#["data"]["dataSets"][0]["series"]["0:0:0"]
