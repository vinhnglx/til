require 'hanami-controller'

module Post
  class Show
    include ::Hanami::Action

    def call(params)
      self.body = params[:id]
    end
  end
end
