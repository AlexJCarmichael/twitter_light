class TweetsController < ApplicationController
  def index
    @page = params[:page] || "1"
    @tweets = Tweet.limit(25).offset((@page.to_i-1)*25)
  end

  def show
    @tweet = Tweet.find_by(id: params["id"].to_i)
  end
end
