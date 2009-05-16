module TinyRackSpellchecker
  class RackApplication
    class << self
      def call(env)
        if env["PATH_INFO"] =~ /^\/spell_checker/
          req = JSON.parse(env["rack.input"].read)
          results = RequestController.handle(req) 
          [200, {"Content-Type" => "text/javascript"}, [results.to_json]]
        else
          [404, {"Content-Type" => "text/html"}, ["Not Found"]]
        end
      end
    end
  end
end
