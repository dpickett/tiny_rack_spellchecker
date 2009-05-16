require "test/unit/assertions"
 
require "tiny_rack_spellchecker"
require "rack/test"

module TinyRackSpellchecker
  module WorldOfCucumber
    def app
      TinyRackSpellchecker::RackApplication.new
    end
    
    include Test::Unit::Assertions
    include Rack::Test::Methods
  end
end

World(TinyRackSpellchecker::WorldOfCucumber)
