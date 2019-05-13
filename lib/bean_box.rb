require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative "./bean_box/version"
require_relative "./bean_box/cli"
require_relative "./bean_box/scraper"
require_relative "./bean_box/bean_box_coffee"

module BeanBoxCoffee
  class Error < StandardError; end

end
