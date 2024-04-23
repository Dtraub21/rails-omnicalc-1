class HomeController < ApplicationController
  def index
    # Your logic here
    render({ :template => "home/index" })
  end
end
