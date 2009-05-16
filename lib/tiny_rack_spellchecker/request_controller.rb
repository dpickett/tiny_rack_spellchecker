module MetallicSpellChecker
  class RequestProcessor
    class << self
      def handle(req)
        if req["method"] == "getSuggestions"
          suggest_alternatives_for(req["params"][1], req["id"])
        else
          check(req["params"][1])
        end
      end

      def self.check(content)
        speller = Aspell.new("en_US")
        bad_words = []
        content.each do |word| 
          unless speller.check(word)
            bad_words << word
          end
        end

        { 
          "id"     => nil,
          "error"  => nil,
          "result" => bad_words.uniq
        }
      end

      def self.suggest_alternatives_for(word, position_id)
        speller = Aspell.new("en_US")
        {
          "id"     => position_id,
          "error"  => nil,
          "result" => speller.suggest(word)[0..8]
        }
      end

    end
  end
end

