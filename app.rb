require 'hanami/router'

class App
  def self.router
    Hanami::Router.new do
      get '/', to: Home::Index
      get '/blog', to: ->(env) { [302, {'Content-Type' => 'text/html', 'Location' => 'https://vinhnglx.github.io'}, ["Let's go"]]  }
    end
  end

  def self.root
    File.dirname(__FILE__)
  end
end
