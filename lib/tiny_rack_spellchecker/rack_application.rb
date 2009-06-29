module TinyRackSpellchecker
  class RackApplication
    def initialize(app = nil, message = "")
      @app = app
      @message = message
    end
    
    def call(env)
      if env["PATH_INFO"] =~ /^\/spell_checker/
        req = JSON.parse(env["rack.input"].read)
        results = RequestController.handle(req) 
        [200, {"Content-Type" => "text/javascript"}, [results.to_json]]
      else
        @app.call(env) unless app.nil?
      end
    end
  end
end
