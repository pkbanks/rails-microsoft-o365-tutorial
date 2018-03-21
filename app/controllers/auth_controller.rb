class AuthController < ApplicationController
  include AuthHelper

  def gettoken
    render plain: params[:code]
  end
end
