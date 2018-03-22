class AuthController < ApplicationController
  include AuthHelper

  def gettoken
    # render plain: params[:code]
    token = get_token_from_code params[:code]
    session[:azure_token] = token.to_hash
    render plain: "Access token saved in session cookie."
  end
end
