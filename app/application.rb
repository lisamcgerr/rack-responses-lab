class Application

    def call(env)
      resp = Rack::Response.new
  
      current_time = Time.now.strftime("%H")
      
      if current_time.to_i >= 12
        resp.write "Afternoon"
      else
        resp.write "Morning"
      end
  
      resp.finish
    end
  
  end