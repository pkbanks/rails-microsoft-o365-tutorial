class HomeController < ApplicationController
  include AuthHelper

  def index
    # display the login link
    @login_url = get_login_url
  end
end


