require 'hanami-controller'
require 'slim'
require 'httparty'

module Home
  class Index
    include ::Hanami::Action

    def call(params)
      self.body = [template.render(self)]
    end

    private

    def template
      Slim::Template.new(::File.join(App.root, 'app', 'views', "home", "index.slim"))
    end

    def posts
      response = ::HTTParty.get('https://api.github.com/repos/vinhnglx/vinhnglx.github.io/issues')
      JSON.parse(response.body).map { |post| { title: post["title"], link: post["html_url"] } }
    end
  end
end
