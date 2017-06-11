require 'cell'
require 'cell/slim'

class LayoutCell < Cell::ViewModel
  include ::Cell::Slim

  def index(&block)
    render(&block)
  end
end
