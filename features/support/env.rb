require "test/unit/assertions"
 
require "tiny_rack_spellchecker"
require "rack/test"

module TinyRackSpellchecker
  module WorldOfCucumber
    def self.included(base)
      base.extend(Test::Unit::Assertions)
    end
    include Rack::Test::Methods
  end
end

World(TinyRackSpellchecker::WorldOfCucumber)
