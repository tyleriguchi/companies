class Api::HelloController < Api::BaseController
  def index
    render(
      data: 'hello'
    ) and return
  end
end
