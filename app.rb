require 'hanami/router'

class App
  def self.router
    Hanami::Router.new do
      get '/', to: Home::Index
      get '/about', to: ->(env) { [200, {}, ['About']]  }
      get '/posts/:id', to: Post::Show
    end
  end
end
