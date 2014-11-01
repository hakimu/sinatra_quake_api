require 'rubygems'
require 'sinatra'
require 'net/http'
require 'json'

# get '/' do

# 	uri = URI("http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson")
# 	data = Net::HTTP.get(uri)
# 	parse_data = JSON.parse([data].to_json).first
# 	parse_data["metadata"]
# end

get '/' do

	uri = URI("http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson")
	data = Net::HTTP.get(uri)
	# parse_data = JSON.parse(request.body.read)
	parse_data = JSON.parse([data].to_json).first
end