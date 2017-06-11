class Home
  def call(env)
    request = Rack::Request.new(env)
    case request.path_info
    when "/"
      [200, {"Content-Type" => "text/html"}, ["Hello"]]
    when "/about"
      [200, {"Content-Type" => "text/html"}, ["About"]]
    else
      [404, {"Content-Type" => "text/html"}, ["No one here..."]]
    end
  end
end
