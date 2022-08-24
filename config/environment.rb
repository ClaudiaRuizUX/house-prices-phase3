require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/development.sqlite3"
)

require_relative "../app/model/region"
require_relative "../app/model/population"
require_relative "../app/model/price"
require_relative "../app/cli"