require 'sinatra'
require 'json'
require 'haml'
require 'coffee_script'
require 'csv'
require 'sheets'

require_relative './lib/funders.rb'

ROOT=File.dirname(__FILE__)
json_filename = File.join(ROOT, "data.json")
xls_filename = File.join(ROOT, "public/funders.xls")
csv_filename = File.join(ROOT, "public/funders.csv")

# Mongoid.load!(File.join(ROOT, '/config/mongoid.yml'))

helpers do
  include Funders
end


get '/'  do
  funders = get_funders_and_save(json_filename, csv_filename, xls_filename)
  haml :funders_ids, locals: { funders: funders }
end

get '/json', provides: :json  do
  funders = get_funders_and_save(json_filename, csv_filename, xls_filename)
  funders.to_json
end

