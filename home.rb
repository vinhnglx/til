require 'hanami/router'

class Home
  def self.router
    Hanami::Router.new do
      get '/', to: ->(env) { [200, {}, ['Hello']] }
      get '/about', to: ->(env) { [200, {}, ['About']]  }
      get '/posts/:id', to: Post::Show
    end
  end
end
