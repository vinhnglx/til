require 'hanami-controller'

module Home
  class Index
    include ::Hanami::Action

    def call(params)
      render_layout "<h1>Hello</h1>"
    end

    def render_layout(content = "")
      self.body = LayoutCell.new(nil).(){ content }
    end
  end
end
