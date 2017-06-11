require 'hanami/router'

class App
  def self.router
    Hanami::Router.new do
      get '/', to: Home::Index
      get '/about', to: ->(env) { [200, {}, ['About']]  }
    end
  end

  def self.root
    File.dirname(__FILE__)
  end
end
