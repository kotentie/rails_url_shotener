class UrlsController < ApplicationController
  def index
    @url = Url.new
    if Url.all
      @urls = Url.all
    end
  end

  def create
    @url = Url.create!(:long => params[:url][:long], :short => shorten)
    redirect_to :action => 'index'
  end

  def destroy
  end



end
