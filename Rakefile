require_relative './lib/funders'

class FundersManager
  include Funders
end

ROOT=File.dirname(__FILE__)
json_filename = File.join(ROOT, "data.json")
xls_filename = File.join(ROOT, "public/funders.xls")
csv_filename = File.join(ROOT, "public/funders.csv")


namespace "funders" do
  task "update" do
    FundersManager.new.get_funders_and_save(json_filename, csv_filename, xls_filename)
  end
end
