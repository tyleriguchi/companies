class Api::BaseController < ApplicationController
  def respond_success(payload = {})
    render json: payload, status: :ok and return
  end

  def get_allowed_params
    convert_allowed_params(allowed_params)
  end

  def convert_allowed_params(_params)
    params.require(:data).permit(_params)
  end

  def allowed_params
    raise RuntimeError('Consumer needs to define method')
  end
end
