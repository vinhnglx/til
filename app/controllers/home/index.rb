require 'hanami-controller'

module Home
  class Index
    include ::Hanami::Action

    def call(params)
      self.body = "Hello"
    end
  end
end
