require_relative "./corona/version"
require_relative "./corona/cli"
require_relative "./corona/state"
require_relative "./corona/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module Corona
  class Error < StandardError; end
end
